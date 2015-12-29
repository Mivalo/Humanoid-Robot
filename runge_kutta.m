function [t, stateArray] = runge_kutta(tspan,state)

global par
h = par.stepSize;
t = [tspan(1):h:tspan(2)]';

stateArray = zeros(length(t),length(state));

for i = 1:length(t)-1
    tic
    t(i)
    k1 = compute_acceleration(t(i),state);
    k2 = compute_acceleration(t(i),state + k1*h/2);
    k3 = compute_acceleration(t(i),state + k2*h/2);
    k4 = compute_acceleration(t(i),state + k3*h);

    state = state + (k1 + 2*k2 + 2*k3 + k4)*h/6;
    state = respectConstraint(state);
    if isnan(max(state))
        warning('One of the states is gone to Inf or NaN')
        return;
    end
    stateArray(i,:) = state';
    animate_robot(h, state);
end