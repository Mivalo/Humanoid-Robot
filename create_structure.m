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
    jR{1};
    jR{2};
    jR{3}];

    matlabFunction(animatic,'File','generated/getJointPosition','Vars',{q},'Optimize',false);
    
    
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
   
Mvec = zeros(par.bodyparts*6,1);
fz = zeros(1,par.bodyparts*6);
for i = 1:par.bodyparts
    Mvec((i-1)*6+[1:6]) = [par.mass(i) par.mass(i) par.mass(i) par.inertia(i) par.inertia(i) par.inertia(i)];
    fz((i-1)*6 + 3) = -par.mass(i)*par.gravity;
end

%%
par.mass = diag(Mvec);
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