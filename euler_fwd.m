function stateNew = euler_fwd(stateOld, input)

h = set_parameters('stepSize');
stateDerivative = generated_dynamics(stateOld, input);
stateNew = stateOld + h*stateDerivative;

if isnan(max(stateNew))
    error('One of the states is gone to Inf or NaN')
end