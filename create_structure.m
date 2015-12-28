function [mass,symStates,symInput,gravity,kinematic,nodeSize] = create_structure()

symNames = {'footX', 'footY', 'footZ', 'anklePL', 'ankleRL', 'kneeL', 'hipPL', 'hipRL',...
     'hipPR', 'hipRR', 'kneeR'};
symNamesu = {'uKneeL', 'uHipPL', 'uHipRL', 'uHipPR', 'uHipRR', 'uKneeR'};
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

% keyboard
%%
pos = q(1:3);

par = set_parameters();
fz = [0 0 -par.mass(6) 0 0 -par.mass(1) 0 0 0 0 -par.mass(2) 0 0 0 0 -par.mass(3) 0 0 0 0 -par.mass(4) 0 0 0 0 -par.mass(5) 0 0];

kinematic = [ pos;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*par.posStraight(:,1);
       anklePL;
       ankleRL;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(anklePL+kneeL,'x')*par.posStraight(:,2);
       anklePL+kneeL;
       ankleRL;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(kneeL+anklePL,'x')*2*par.posStraight(:,2) + ...
       rot(hipRL,'y')*rot(hipPL+ankleRL,'x')*par.posStraight(:,3);
       hipPL+kneeL+anklePL;
       hipRL+ankleRL;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(kneeL+anklePL,'x')*2*par.posStraight(:,2) - ...
       rot(hipRL,'y')*rot(hipPL+ankleRL,'x')*2*par.posStraight(:,5) - ...
       rot(hipRR+hipRL+kneeR,'y')*rot(hipPR,'x')*par.posStraight(:,1);
       hipPR;
       hipRR;
       pos + rot(ankleRL,'y')*rot(anklePL,'x')*2*par.posStraight(:,1) + ...
       rot(ankleRL,'y')*rot(kneeL,'x')*2*par.posStraight(:,2) - ...
       rot(hipRR,'y')*rot(hipPR,'x')*2*par.posStraight(:,1) - ...
       rot(hipRR,'y')*rot(kneeR,'x')*par.posStraight(:,1);
       kneeR;
       hipRR];
   
bodyparts = 5; 
Mvec(1:3) = par.mass(6);
for i = 1:bodyparts
    Mvec(1,3+(i-1)*bodyparts+[1:5]) = [par.mass(i) par.mass(i) par.mass(i) par.inertia(i) par.inertia(i)];
end

%%
    mass = diag(Mvec);
    symStates.pos = q;
    symStates.vel = qd;
    symStates.acc = qdd;
    symStates.pos_t = qt;
    symInput = u;
    gravity = fz;
    
    nodeSize.state = length(symNames)*2;
    nodeSize.input = length(symNamesu);
    nodeSize.ext = length(fz);
end