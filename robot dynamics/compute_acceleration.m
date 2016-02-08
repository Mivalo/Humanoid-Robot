function stateDerivative = compute_acceleration(t, state,torque)
    global par
%     t
    u = zeros(length(par.symNames),1);
    if nargin == 3
        u(7:end) = torque;
    else
        u(7:end) = computeTorque(state);
    end
%     state = respectConstVel(state);
    velocity = state(1:length(state)/2);

    forceExt = computeContacts(state);
 
    con = zeros(length(forceExt),length(velocity));
    for i = 1:length(velocity)
        evalString = ['getDoubleJ',par.symNames{i},'(state)'];
        doubleJac = eval(evalString);
        if (~nnz(doubleJac))
            doubleJac = zeros(length(forceExt),length(velocity));
        end
        con(:,i) = doubleJac*velocity;
    end
    J = getJacobian(state);
    
    M = J'*par.M*J;
    
    fw = computeFriction(state);

    f = u + fw + J'*(par.fz' + forceExt - par.M*con*velocity);
    
    stateDerivative = [M\f; velocity];