global par

stateN = par.nodeSize.state;
extN = par.nodeSize.ext;
inputN = par.nodeSize.input;


stepSize = par.stepSize;
state = 0*ones(stateN,1);
state(21) = 0.8;
state(22) = 0.1;
state(6) = 0;
timeEnd =5;
tspan = [0, timeEnd];
forceExt = zeros(extN,1);

odeOptions = odeset('RelTol',1e-2,'AbsTol',1e-4,'Events',@unstable);
% [t, state] = ode45(@compute_acceleration,tspan,state,odeOptions);
[t, state] = runge_kutta(tspan,state);

t = [0;t];
playspeed = 5;
for i = playspeed + 1:playspeed:length(t) -1;
%         
%         input = zeros(stateN/2,1);
%         state = runge_kutta(state, input, forceExt);
    dt = t(i) - t(i-playspeed);
    animate_robot(dt, state(i,:)');
    i = i+1;
end

