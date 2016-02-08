function f = computeContactForce(pos,vel)
    global par
    f = zeros(3,1);
    D = par.contactDamping;
    F = par.contactFriction;
    
    if (pos(3) <= 0)
        f = f - vel.*F*D;
    end