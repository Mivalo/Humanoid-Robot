function [stateRef, xCom] = compute_capture_point(state)
    par = set_parameters();
    l = par.length(1) + par.length(2);
    w = sqrt(par.gravity/l);

    r = double(workspace_config_2D(state,'pos'));
    x0 = (r(4)+r(5))/2;
    
    rd = double(workspace_config_2D(state,'vel'));
    xd0 = (rd(4)+rd(5))/2;
    xCom = 1/w*xd0 + x0;
    kneeR = pi/6;
    hip = -2*asin(xCom/2/(par.posStraight2D(2,1) + par.posStraight2D(2,2)))-kneeR;
    ankleL = 2*asin(xCom/2/(par.posStraight2D(2,1) + par.posStraight2D(2,2)));
    kneeL = 0;
    
    torso = 0;
    
    stateRef = [ankleL; kneeL; torso; hip; kneeR];
    