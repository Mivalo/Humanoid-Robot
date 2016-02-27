function K = compute_lqr_gain(robotlin,linPointState,linPointInput, linPointForce)

Q = set_parameters('Qlqr')*eye(length(linPointState));
R = set_parameters('Rlqr')*eye(length(linPointInput));

[A,B] = linearize_system(robotlin,linPointState, linPointInput, linPointForce);
K = lqr(A,B,Q,R);