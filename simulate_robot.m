    stateN = nodeSize.state;
    extN = nodeSize.ext;
    inputN = nodeSize.input;
    

stepSize = set_parameters('stepSize');
    state = 0*ones(stateN,1);
    state(10) = 1;
    state(2) = 2;
    timeEnd = 5;
    i = 1;
    forceExt = zeros(extN,1);

%     D = 0.5;
%     P = 20;
%     [stateRefAbs, xCom] = compute_capture_point(state);
% %     stateRefFin = [0 0 0 0 0].';
%     stateRefRel = zeros(5,1);
%     %%
%     robotlin = linear_dynamics();
%     %%
%     linPointState = [zeros(stateN/2,1); zeros(stateN/2,1)];
%     linPointInput = 0*ones(4,1);
%     linPointForce = zeros(15,1);
%     Klqr = compute_lqr_gain(robotlin,linPointState,linPointInput,linPointForce);
%     K = zeros(5,10);
%     K(2:5,:) = Klqr;
%     Klqr = zeros(2,6);
    %s
%     K = [0 0 0 0 0 0 0 0 0 0; 
%          0 0 0 0 0 0 0 0 0 0;
%          Klqr(1,1) 0 Klqr(1,2) Klqr(1,3) 0 Klqr(1,4) 0 Klqr(1,5) Klqr(1,6) 0; 
% %                   0 0 0 0 0 0 0 0 0 0;
%          Klqr(2,1) 0 Klqr(2,2) Klqr(2,3) 0 Klqr(2,4) 0 Klqr(2,5) Klqr(2,6) 0; 
%          0 0 0 0 0 0 0 0 0 0];
%     K = [D*eye(stateN/2), P*eye(stateN/2)];
%     K(1,:) = zeros(1,10);
%     K(3,:) = [0 0 D 0 0 0 0 P 0 0];
%     K(4,:) = zeros(1,10);
%     K(5,:) = zeros(1,10);
    %%
% keyboard
%     K = zeros(stateN/2,stateN);
    figure(1)
    while i <= floor(timeEnd/stepSize)
        
%         stateRefRel(3) = -state(6)-state(7);
%         stateRefRel(5) = stretch_knee(state,xCom,stateRefRel);
%         
%         input = -K*(state-[zeros(5,1); (stateRefAbs+stateRefRel)]);
        input = zeros(stateN/2,1);
        state = runge_kutta(state, input, forceExt);
%         state(8:9) = [0; 0];
%         [state,legswitch] = switch_leg(state);
%         if legswitch == true;
%             [stateRefAbs, xCom] = compute_capture_point(state);
%             linPointState = [0; 0; 0; state([1 3 4])];
%             linPointInput = 0*ones(2,1);
% %             Klqr = compute_lqr_gain(robotlin,linPointState,linPointInput);
%         end
       
        animate_robot(state,3);
        i = i+1;
    end

