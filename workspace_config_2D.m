function r = workspace_config_2D(state,name)
    posStraight2D = set_parameters('posStraight2D');
    global robot
    angle = state(2+length(state)/2+1:length(state));
    pos = state(length(state)/2 + [1:2]);
    absAng = [angle(1);
              angle(1)+angle(2);
              angle(1)+angle(2)+angle(3);
              angle(1)+angle(2)+angle(4);
              angle(1)+angle(2)+angle(4)+angle(5)];
    angvel = state(1:length(state)/2);
    switch name
        case 'com'
            r = [pos
                pos + rot2D(absAng(1))*posStraight2D(:,1);
                   angle(1);
                   pos + rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*posStraight2D(:,2);
                   absAng(2);
                 pos + rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*2*posStraight2D(:,2) + ...
                   rot2D(absAng(3))*posStraight2D(:,3);
                   absAng(3);
                 pos + rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*2*posStraight2D(:,2) - ...
                   rot2D(absAng(4))*posStraight2D(:,4);
                   absAng(4);
                pos + rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*2*posStraight2D(:,2) - ...
                   rot2D(absAng(4))*2*posStraight2D(:,4) - ...
                   rot2D(absAng(5))*1.2*posStraight2D(:,5);
                   absAng(5)];
        case 'pos'
            r = [pos
                pos + rot2D(absAng(1))*2*posStraight2D(:,1);
                   absAng(1);
                 pos +  rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*2*posStraight2D(:,2);
                   absAng(2);
                  pos + rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*2*posStraight2D(:,2) + ...
                   rot2D(absAng(3))*2*posStraight2D(:,3);
                   absAng(3)
                  pos + rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*2*posStraight2D(:,2) - ...
                   rot2D(absAng(4))*2*posStraight2D(:,4);
                   absAng(4);
                  pos + rot2D(absAng(1))*2*posStraight2D(:,1) + ...
                   rot2D(absAng(2))*2*posStraight2D(:,2) - ...
                   rot2D(absAng(4))*2*posStraight2D(:,4) - ...
                   rot2D(absAng(5))*2*posStraight2D(:,5);
                   absAng(5)];
        case 'vel'
            J = subs(robot.jacobian.kinematic,robot.symbolic.state,state);
            r = J*angvel;
    end
end