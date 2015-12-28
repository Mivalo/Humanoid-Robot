function [mass,symStates,symInput,gravity,kinematic] = create_structure_2D()
    syms footX footY ankleL kneeL hipL hipR kneeR 
    syms footXd footYd ankleLd kneeLd hipLd hipRd kneeRd 
    syms footXdd footYdd ankleLdd kneeLdd hipLdd hipRdd kneeRdd
    syms uKneeL uHipL uHipR uKneeR
    u = [0 0 0 uKneeL uHipL uHipR uKneeR].';
    q = [footX footY ankleL kneeL hipL hipR kneeR].';
    qd = [footXd footYd ankleLd kneeLd hipLd hipRd kneeRd].';
    qdd = [footXdd footYdd ankleLdd kneeLdd hipLdd hipRdd kneeRdd].';
    qt(1,1) = subs(q(1),footX,'footX(t)');
    qt(2,1) = subs(q(2),footY,'footY(t)');
    qt(3,1) = subs(q(3),ankleL,'ankleL(t)');
    qt(4,1) = subs(q(4),kneeL,'kneeL(t)');
    qt(5,1) = subs(q(5),hipL,'hipL(t)');
    qt(6,1) = subs(q(6),hipR,'hipR(t)');
    qt(7,1) = subs(q(7),kneeR,'kneeR(t)');
    statesym = [qd; q];
    par = set_parameters();
    fz = [0 0 0 -par.mass(1) 0 0 -par.mass(2) 0 0 -par.mass(3) 0 0 -par.mass(4) 0 0 -par.mass(5) 0];

    kinematic = workspace_config_2D(statesym,'pos');

    bodyparts = 5;   
    Mvec = [0.05 0.05];
    for i = 1:bodyparts
        Mvec(1,2+(i-1)*3+[1:3]) = [par.mass(i) par.mass(i) par.inertia(i)];
    end

    mass = diag(Mvec);
    symStates.pos = q;
    symStates.vel = qd;
    symStates.acc = qdd;
    symStates.pos_t = qt;
    symInput = u;
    gravity = fz;
end
