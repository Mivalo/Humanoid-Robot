global par

stateN = par.nodeSize.state;
extN = par.nodeSize.ext;
inputN = par.nodeSize.input;


stepSize = par.stepSize;
state = 0*ones(stateN,1);
state(21) = 0.9;
state(22) = -0.2;
state(23) = 0;
state(6) = 0;
timeEnd =3;
tspan = [0, timeEnd];
forceExt = zeros(extN,1);

[A,B] = linearize_system(state);
par.Klqr = lqr(A,B,par.Qlqr,par.Rlqr);

global status
status.primary = 0;
status.secondary = 0;
status.desired = state;
%%
% odeOptions = odeset('RelTol',1e-2,'AbsTol',1e-4,'Events',@unstable);
% [t, state] = ode45(@compute_acceleration,tspan,state,odeOptions);
[t, state] = runge_kutta(tspan,state);

% t = [0;t];
% % playspeed = 5;
% for i = playspeed + 1:playspeed:length(t) -1;
% %         
% %         input = zeros(stateN/2,1);
% %         state = runge_kutta(state, input, forceExt);
%     dt = t(i) - t(i-playspeed);
%     animate_robot(dt, state(i,:)');
% end

