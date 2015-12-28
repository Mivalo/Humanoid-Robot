function stateDerivative = compute_acceleration(state, input, forceExt)
    par = set_parameters();
    velocity = state(1:length(state)/2);
    M = mass_matrix(state);
    C = coriolis_matrix(state);
    G = gravity_matrix(state);
    J = jacobian_matrix(state);
    stateDerivative = [M\(-C*velocity+G+input+J.'*forceExt); velocity];