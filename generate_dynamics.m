function generate_dynamics(symStates,symInput,kinematic)
    display('- Generating dynamic matrices');
    tic
    q = symStates.pos;
    qd = symStates.vel;
    gq = kinematic;
    uSym = sym('uSym',[0 0]);
    for j = 1:length(symInput)
        try
            double(symInput(j));
        catch
            uSym(length(uSym) + 1,1) = symInput(j);
        end
    end

    syms t
    J_q = jacobian(gq,q);
    
    con = sym('c',[length(kinematic),length(q)]);    
    for i = 1:length(q)
        con(:,i) = jacobian(J_q(:,i),q)*qd;
    end
   
    state = [qd; q];
    display('- Creating functions');
    matlabFunction(con,'File','convect_matrix','Vars',{state},'Optimize',false);
    matlabFunction(J_q,'File','jacobian_matrix','Vars',{state},'Optimize',false);    
    toc
end