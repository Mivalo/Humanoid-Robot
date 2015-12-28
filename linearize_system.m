function [A, B] = linearize_system(robotlin,linPointState, linPointInput, linPointForce)
    
    if nargin == 1
        A = double(subs(robot.jacobian.state,robotlin.symbolic.state,linPointState));
    else
%         keyboard
        A = real(double(subs(robotlin.jacobian.state,[robotlin.symbolic.state; robotlin.symbolic.input; robotlin.symbolic.forceExt], ...
                                                     [linPointState; linPointInput; linPointForce])));
        B = real(double(subs(robotlin.jacobian.input,[robotlin.symbolic.state; robotlin.symbolic.input; robotlin.symbolic.forceExt], ...
                                                     [linPointState; linPointInput; linPointForce])));
    end
end