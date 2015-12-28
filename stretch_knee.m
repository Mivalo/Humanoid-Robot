function kneeRef = stretch_knee(state,xCom,stateRefRel)
stateCorrect = zeros(size(state));
stateCorrect(10) = -stateRefRel(5);
pos = workspace_config_2D(state+stateCorrect,'pos');
captureBound = set_parameters('captureBound');
abs(pos(13) - xCom)
if abs(pos(13) - xCom) < captureBound
    kneeRef = 0;
else
    kneeRef = stateRefRel(5);
end