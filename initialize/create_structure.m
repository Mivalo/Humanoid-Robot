function [symStates,symInput,kinematic] = create_structure()

global par

symNames = par.symNames;
symNamesu = par.symNamesu;

q = sym(symNames).';
u = sym(symNamesu).';
qt = sym('qt',size(q));
qd = sym('qd',size(q));
qdd = sym('qdd',size(q));

for j = 1:length(q)
    symd = [symNames{j},'d'];
    symdd = [symNames{j},'dd'];
    qt(j) = sym([symNames{j},'(t)']);
    qd(j) = sym(symd);
    qdd(j) = sym(symdd);
    syms(symNames{j});
    syms(symd);
    syms(symdd);
end

    state = [qd; q];

%%
rRoot = q(4:6);
rL{1} = q(10:12);
rR{1} = q(16:18);
rL{2} = [q(9); 0; 0];
rR{2} = [q(15); 0; 0];
rL{3} = [q(7:8); 0];
rR{3} = [q(13:14); 0];

rootPos = q(1:3);
rootRot = rot(rRoot);

comR = cell(4,1);
comL = cell(4,1);
rotR = cell(4,1);
rotL = cell(4,1);
jR = cell(4,1);
jL = cell(4,1);

rotR{1} = rot(rRoot);
rotL{1} = rot(rRoot);
jR{1} = rootPos + rootRot*par.com(:,1);
jL{1} = rootPos - rootRot*par.com(:,1);

for i = 1:3
    rotR{i+1} = rot(rR{i})*rotR{i};
    rotL{i+1} = rot(rL{i})*rotL{i};
    comL{i} = jL{i} + rotL{i+1}*par.com(:,i+1);
    comR{i} = jR{i} + rotR{i+1}*par.com(:,i+1);
    jL{i+1} = jL{i} + rotL{i+1}*par.joint(:,i+1);
    jR{i+1} = jR{i} + rotR{i+1}*par.joint(:,i+1);
end

animatic = [rootPos;
    jL{1};
    jL{2};
    jL{3};
    jL{4};
    jR{1};
    jR{2};
    jR{3};
    jR{4}];

contacts = [
    jL{3};
    jL{4};
    jR{3};
    jR{4}];

matlabFunction(animatic,'File','generated/getJointPosition','Vars',{state},'Optimize',false);
matlabFunction(contacts,'File','generated/getContactPosition','Vars',{state},'Optimize',false);   

contactJac = jacobian(contacts,q);
matlabFunction(contactJac,'File','generated/getContactJacobian','Vars',{state},'Optimize',false);  
    
kinematic = [ rootPos;
    rRoot;
    comL{1};
    rL{1};
    comL{2};
    rL{2};
    comL{3};
    rL{3};
    comR{1};
    rR{1};
    comR{2};
    rR{2};
    comR{3};
    rR{3}];

com = [ rootPos;
    comL{1};
    comL{2};
    comL{3};
    comR{1};
    comR{2};
    comR{3}];

commass = zeros(3,3*length(par.mass));
for i = 1:length(par.mass)
    commass(:,(i-1)*3 + [1:3]) = par.mass(i)*eye(3);
end
    
com_total = commass*com/sum(par.mass);

balanceNodes = [rootPos; comL{3}; comR{3}];

balanceJac = jacobian(balanceNodes, q);

matlabFunction(com,'File','generated/getComPosition','Vars',{state},'Optimize',false);  

matlabFunction(balanceNodes,'File','generated/getBalancePosition','Vars',{state},'Optimize',false); 
matlabFunction(balanceJac,'File','generated/getBalanceJacobian','Vars',{state},'Optimize',false);  
   
Mvec = zeros(par.bodyparts*6,1);
massVec = zeros(par.bodyparts*3,1);
fz = zeros(1,par.bodyparts*6);
for i = 1:par.bodyparts
    massVec((i-1)*3+[1:3]) = [par.mass(i) par.mass(i) par.mass(i)];
    Mvec((i-1)*6+[1:6]) = [par.mass(i) par.mass(i) par.mass(i) par.inertia(i) par.inertia(i) par.inertia(i)];
    fz((i-1)*6 + 3) = -par.mass(i)*par.gravity;
end

%%
par.M = diag(Mvec);
par.massVec = diag(massVec);
par.fz = fz;
symStates.pos = q;
symStates.vel = qd;
symStates.acc = qdd;
symStates.pos_t = qt;
symInput = u;

nodeSize.state = length(symNames)*2;
nodeSize.input = length(symNamesu);
nodeSize.ext = length(fz);
par.nodeSize = nodeSize;
end