function [value,isterminal,dir] = unstable(t,state)
    isterminal = 1;
    dir = 0;
    if max(abs(state(1:length(state)/2))) > 10000
      value = 0;  
        display(isterminal)
    else
      value = 1;  
    end