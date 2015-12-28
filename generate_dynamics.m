function varargout = generate_dynamics(symStates,symInput,mass,gravity,kinematic,output)
    global robot
    display('- Generating dynamic matrices');
    tic
    q = symStates.pos;
    qd = symStates.vel;
    qdd = symStates.acc;
    qt = symStates.pos_t;
    u = symInput;
    M = mass;
    fz = gravity;
    gq = kinematic;
    uSym = sym('uSym',[0 0]);
    forceExt = sym('forceExt',size(fz.'));
    for j = 1:length(symInput)
        try
            double(symInput(j));
        catch
            uSym(length(uSym) + 1,1) = symInput(j);
        end
    end

    par = set_parameters();
    syms t
    J_q = jacobian(gq,q);
    Mq = J_q.'*M*J_q;
    
    qtd = diff(qt,t); % differentiating q(t)
    qtdd = diff(qtd,t); % differentiating again
%     keyboard
    L = subs(1/2*qtd.'*Mq*qtd - fz*gq,[qtd qt],[qd,q]); % Lagrangian

    % -- Differentiating the Lagrangian to get the Euler-Lagrange Equation
    for i = 1:1:length(q)
        Ld1(i,1) = diff(L,qd(i)); % differentiating over q'
        Ld2(i,1) = diff(L,q(i)); % differentiating over q
    end

    % Substiting the q and q' vectors with q(t) and q'(t) vectors, that are
    % dependent of t to differentiate over t.(time)
    Ld1 = diff(subs(Ld1,[qd q],[qtd qt]),t); 

    % Subtracting the first and second part of the Euler-Lagrange, and
    % simplifying it, to get the Euler-Lagrange equation. Then substituting 
    % back the time dependent q(t), q'(t) and q''(t) to
    % the time-independent q, q', and q'' for further calculations.
    Lde = subs(Ld1 - Ld2,[qtdd qtd qt],[qdd qd q]); 

    % -- Extracting matrices
    M = Mq;
    C = jacobian(Lde,qd); % extracting coriolis matrix
    G = jacobian(fz*gq,q).';
    state = [qd; q];

    switch output
        case 'mat2fun'
            display('- Creating functions');
            matlabFunction(M,'File','mass_matrix','Vars',{state},'Optimize',false);
            matlabFunction(C,'File','coriolis_matrix','Vars',{state},'Optimize',false);
            matlabFunction(G,'File','gravity_matrix','Vars',{state},'Optimize',false);
            matlabFunction(J_q,'File','jacobian_matrix','Vars',{state},'Optimize',false);    
            toc
        case 'acc2fun'
            display('- Computing state derivative')
            stateDerivative = [inv(M)*(-C*qd+G-par.friction*atan(qd)+u+J_q.'*forceExt); qd];
            rob.jacobian.state = jacobian(stateDerivative,[qd; q]);
            rob.jacobian.input = jacobian(stateDerivative,uSym);
            rob.jacobian.kinematic = J_q;
            rob.symbolic.state = [symStates.vel; symStates.pos];
            rob.symbolic.input = uSym;
            rob.symbolic.forceExt = forceExt;
            display('- Creating function');
            matlabFunction(stateDerivative,'File','generated_dynamics','Vars',{state, uSym, forceExt},'Optimize',false);
            robot = rob;
                varargout{1} = [];
        case 'dyn2sym'
            display('- Computing state derivative')
            stateDerivative = [inv(M)*(-C*qd+G-par.friction*atan(qd)+u+J_q.'*forceExt); qd];
            rob.jacobian.state = jacobian(stateDerivative,[qd; q]);
            rob.jacobian.input = jacobian(stateDerivative,uSym);
            rob.jacobian.kinematic = J_q;
            rob.symbolic.state = [symStates.vel; symStates.pos];
            rob.symbolic.input = uSym;
            rob.symbolic.forceExt = forceExt;
            varargout{1} = rob;
    end
end