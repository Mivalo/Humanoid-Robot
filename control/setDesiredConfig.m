function desiredState = setDesiredConfig(state)
global status

if status.primary == 0
    if status.secondary == 0
        pos = getBalancePosition(state);
        posD = setRootPosition(pos);
        posJac = getBalanceJacobian(state);
        posDiff = posD - pos;
        status.desired = state +pinv(posJac)*posDiff;
        status.secondary = 1;
    end
end

desiredState = status.desired;


