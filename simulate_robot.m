global par

stateN = par.nodeSize.state;
    extN = par.nodeSize.ext;
    inputN = par.nodeSize.input;
    

stepSize = par.stepSize;
    state = 0*ones(stateN,1);
    state(21) = 0.7;
    state(6) = 0.2;
    timeEnd = 20;
    i = 1;
    forceExt = zeros(extN,1);

    while i <= floor(timeEnd/stepSize)
        
        input = zeros(stateN/2,1);
        state = runge_kutta(state, input, forceExt);
        animate_robot(state);
        i = i+1;
    end

