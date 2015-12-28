function stateNew = runge_kutta(stateOld, input, forceExt)

h = set_parameters('stepSize');

k1 = compute_acceleration(stateOld, input, forceExt);
k2 = compute_acceleration(stateOld + k1*h/2, input, forceExt);
k3 = compute_acceleration(stateOld + k2*h/2, input, forceExt);
k4 = compute_acceleration(stateOld + k3*h, input, forceExt);

stateNew = stateOld + (k1 + 2*k2 + 2*k3 + k4)*h/6;

if isnan(max(stateNew))
    error('One of the states is gone to Inf or NaN')
end