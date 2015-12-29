function [A, B] = linearize_system(state)
    global par
    t = 0;

    stepSize = par.linearDiff;
    torque = zeros(length(par.symNamesu),1);
    torqueNew = torque;
    stateDer0 = compute_acceleration(t,state,torque);
    stateNew = state;
    A = zeros(length(par.linSI)*2);
    for i = 1:length(par.linSI);
        j = par.linSI(i);
        stateNew(j) = stateNew(j) + stepSize;
        stateDer1 = compute_acceleration(t,stateNew,torque);
        stateDiff = (stateDer1 - stateDer0)/stepSize;
        A(:,i) = stateDiff([par.linSI, length(par.symNames)+par.linSI]);
        stateNew = state;
        
        stateNew(j+length(par.symNames)) = stateNew(j+length(par.symNames)) + stepSize;
        stateDer1 = compute_acceleration(t,stateNew,torque);
        stateDiff = (stateDer1 - stateDer0)/stepSize;
        A(:,i+length(par.linSI)) = stateDiff([par.linSI, length(par.symNames)+par.linSI]);
        stateNew = state;
    end
    
    B = zeros(length(par.linSI)*2,length(par.linTI));
    for i = 1:length(par.linTI)
        j = par.linTI(i);
        torqueNew(j) = torqueNew(j) + stepSize;
        stateDer1 = compute_acceleration(t,state,torqueNew);
        stateDiff = (stateDer1 - stateDer0)/stepSize;
        B(:,i) = stateDiff([par.linSI, length(par.symNames)+par.linSI]);
        torqueNew = torque;
    end
end