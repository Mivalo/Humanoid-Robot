function parOut = set_parameters(name)
    global par
    par.symNames = {'rootX', 'rootY', 'rootZ', 'rootP', 'rootR', 'rootJ', ...
                'anklePL', 'ankleRL', 'kneeL', 'hipPL', 'hipRL', 'hipJL',...
                'anklePR', 'ankleRR', 'kneeR', 'hipPR', 'hipRR', 'hipJR'};
    par.symNamesu = {'anklePL', 'ankleRL', 'kneeL', 'hipPL', 'hipRL', 'hipJL',...
                'anklePR', 'ankleRR', 'kneeR', 'hipPR', 'hipRR', 'hipJR'};
    par.bodyparts = 7; 
    par.cFriction = 0;
    par.mass = [3 0.5 0.5 0.1 0.5 0.5 0.1];
    par.length = [0.3 0.3 0.3 0.1 0.3 0.3 0.1];
    par.dist = par.length/2;
    par.radius = par.length/2;
    par.inertia = par.mass.*par.radius.^2/12;
    par.friction = [0.1; 0.1; 0.1; 0.1; 0.1; 0.1; 
                    0.001; 0.001; 0.01; 0.01; 0.01; 0.01;
                    0.001; 0.001; 0.01; 0.01; 0.01; 0.01];
    par.gravity = 9.81;
    par.com = [par.radius(1)    0               0                   0               0               0               0;
               0                0               0                   par.radius(4)   0               0               par.radius(7);
               0                -par.radius(2)  -par.radius(3)      0               -par.radius(5)  -par.radius(6)  0];
    par.joint = [par.length(1)    0               0                   0               0               0               0;
               0                0               0                   par.length(4)   0               0               par.length(7);
               0                -par.length(2)  -par.length(3)      0               -par.length(5)  -par.length(6)  0];
    par.stepSize = 0.01;
    par.captureBound = 0.1;
    
    par.contactStiffness = 10000;
    par.contactDamping = 10;
    par.contactFriction = [1; 1; 0];
    
    par.linearDiff = 0.01;
%     par.linSI = [7 8 9 10 11 12 13 14 15 16 17 18];
%     par.linTI = [1 2 3 4 5 6 7 8 9 10 11 12];
    
    par.linSI = [7 9 10 13 15 16];
    par.linTI = [1 3 4 7 9 10];
    
    par.Qlqr = 1*[0*eye(length(par.linSI)) zeros(length(par.linSI));
                zeros(length(par.linSI)) 100*eye(length(par.linSI))];
    par.Rlqr = 1000*eye(length(par.linTI));
    par.Klqr = [];
    
    if nargin <= 0;
        parOut = par;
    else
        try
            parOut = eval(['par.' name]);
        catch
            error('Parameter is onbekend')
        end
    end
end