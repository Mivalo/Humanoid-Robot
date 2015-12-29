function stateDerivative = compute_acceleration(t, state)
%     t

%     state = respectConstVel(state);
    velocity = state(1:length(state)/2);
    global par
    forceExt = zeros(length(par.fz),1);
    
    forceExt = forceExt + computeContacts(state);
 
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

    f = fw + J'*(par.fz' + forceExt - par.M*con*velocity);
    
    stateDerivative = [M\f; velocity];