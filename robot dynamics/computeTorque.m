function tau = computeTorque(state)
global par

stateDesired = setDesiredConfig(state);

stateDiff = stateDesired - state;
tau = zeros(length(par.symNamesu),1);
if (~isempty(par.Klqr))
    tau(par.linTI) = par.Klqr*stateDiff([par.linSI, length(par.symNames) + par.linSI]);
end
