function stateDerivative = compute_acceleration(state, input, forceExt)
    global par
    velocity = state(1:length(state)/2);
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
    M = J'*par.mass*J;
    f = J'*( - par.mass*con*velocity);
    stateDerivative = [M\f; velocity];