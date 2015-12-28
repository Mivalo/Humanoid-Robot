function stateDerivative = compute_acceleration(state, input, forceExt)
    global par
    velocity = state(1:length(state)/2);
    con = conv_matrix(state);
    J = jacobian_matrix(state);
    M = J'*par.mass*J;
    f = J'*(par.fz - M*con*velocity);
    stateDerivative = [M\f; velocity];