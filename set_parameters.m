function parOut = set_parameters(name)

    par.symNames = {'rootX', 'rootY', 'rootZ', 'rootP', 'rootR', 'rootJ', ...
                'anklePL', 'ankleRL', 'kneeL', 'hipPL', 'hipRL', 'hipJL',...
                'anklePR', 'ankleRR', 'kneeR', 'hipPR', 'hipRR', 'hipJR'};
    par.symNamesu = {'anklePL', 'ankleRL', 'kneeL', 'hipPL', 'hipRL', 'hipJL',...
                'anklePR', 'ankleRR', 'kneeR', 'hipPR', 'hipRR', 'hipJR'};
    par.bodyparts = 7; 
    
    par.mass = [2 0.5 0.5 0.1 0.5 0.5 0.1];
    par.length = [0.3 0.3 0.3 0.06 0.3 0.3 0.06];
    par.dist = par.length/2;
    par.radius = par.length/2;
    par.inertia = par.mass.*par.radius.^2/12;
    par.friction = 0.5;
    par.gravity = 9.81;
    par.com = [par.radius(1)    0               0                   0               0               0               0;
               0                0               0                   par.radius(4)   0               0               par.radius(7);
               0                -par.radius(2)  -par.radius(3)      0               -par.radius(5)  -par.radius(6)  0];
    par.joint = [par.length(1)    0               0                   0               0               0               0;
               0                0               0                   par.length(4)   0               0               par.length(7);
               0                -par.length(2)  -par.length(3)      0               -par.length(5)  -par.length(6)  0];
    par.stepSize = 0.05;
    par.Qlqr = 5;
    par.Rlqr = 1;
    par.captureBound = 0.1;
    
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