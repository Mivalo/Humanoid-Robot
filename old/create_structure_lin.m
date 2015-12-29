function [mass,symStates,symInput,gravity,kinematic] = create_structure_lin()
    syms ankleL hipL hipR
    syms ankleLd hipLd hipRd 
    syms ankleLdd hipLdd hipRdd 
    syms uAnkleL uHipL uHipR 
    u = [0 uHipL uHipR].';
    q = [ankleL hipL hipR ].';
    qd = [ankleLd hipLd hipRd ].';
    qdd = [ankleLdd hipLdd hipRdd ].';
    qt(1,1) = subs(q(1),ankleL,'ankleL(t)');
    qt(2,1) = subs(q(2),hipL,'hipL(t)');
    qt(3,1) = subs(q(3),hipR,'hipR(t)');    

    par = set_parameters();

    mass_lin(1) = par.mass(1) + par.mass(2);
    mass_lin(2) = par.mass(3);
    mass_lin(3) = par.mass(4) + par.mass(5);
    inertia_lin(1) = mass_lin(1)*(par.radius(1) + par.radius(2)).^2/12;
    inertia_lin(2) = par.mass(3).*par.radius(3).^2/12;
    inertia_lin(3) = mass_lin(3)*(par.radius(4) + par.radius(5)).^2/12;

    fz = [0 -mass_lin(1) 0 0 -mass_lin(2) 0 0 -mass_lin(3) 0];

    kinematic = [rot2D(ankleL)*(par.posStraight2D(:,1)+par.posStraight2D(:,2));
           ankleL;
           rot2D(ankleL)*2*(par.posStraight2D(:,1)+par.posStraight2D(:,2)) + ...
           rot2D(hipL+ankleL)*par.posStraight2D(:,3);
           hipL+ankleL;
           rot2D(ankleL)*2*(par.posStraight2D(:,1)+par.posStraight2D(:,2)) - ...
           rot2D(hipR+ankleL)*(par.posStraight2D(:,4)+par.posStraight2D(:,5));
           hipR+ankleL];

    bodyparts = 3;      
    for i = 1:bodyparts
        Mvec(1,(i-1)*3+[1:3]) = [mass_lin(i) mass_lin(i) inertia_lin(i)];
    end

    M = diag(Mvec);

    mass = diag(Mvec);
    symStates.pos = q;
    symStates.vel = qd;
    symStates.acc = qdd;
    symStates.pos_t = qt;
    symInput = u;
    gravity = fz;
end