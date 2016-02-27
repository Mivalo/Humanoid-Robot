function tau = robotControl(state)
global par

de

tau = zeros(length(par.symNamesu),1);
if (~isempty(par.Klqr))
    tau(par.linTI) = - par.Klqr*state([par.linSI, length(par.symNames) + par.linSI]);
end
