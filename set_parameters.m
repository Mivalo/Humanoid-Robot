function parOut = set_parameters(name)

    par.mass = [0.4 0.5 1 0.5 0.5 0.1];
    par.length = [0.40 0.40 0.60 0.4 0.4];
    par.dist = par.length/2;
    par.radius = par.length/2;
    par.inertia = par.mass(1:5).*par.radius.^2/12;
    par.friction = 0.5;
    par.gravity = 9.81;
    par.posStraight = [0 0 0 0 0; 0 0 0 0 0; par.radius];
    par.posStraight2D = [0 0 0 0 0; par.radius];
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