function [t, stateArray] = runge_kutta(tspan,state)

h = set_parameters('stepSize');
t = [tspan(1):h:tspan(2)]';

stateArray = zeros(length(t),length(state));

for i = 1:length(t)

    k1 = compute_acceleration(t,state);
    k2 = compute_acceleration(t,state + k1*h/2);
    k3 = compute_acceleration(t,state + k2*h/2);
    k4 = compute_acceleration(t,state + k3*h);

    state = state + (k1 + 2*k2 + 2*k3 + k4)*h/6;
    state = respectConstraint(state);
    if isnan(max(state))
        error('One of the states is gone to Inf or NaN')
    end
    stateArray(i,:) = state';
end