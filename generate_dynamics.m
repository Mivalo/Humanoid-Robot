function generate_dynamics(symStates,symInput,comPos)
    display('- Generating dynamic matrices');
    tic
    global par
    q = symStates.pos;
    qd = symStates.vel;
    gq = comPos;
    uSym = sym('uSym',[0 0]);
    for j = 1:length(symInput)
        try
            double(symInput(j));
        catch
            uSym(length(uSym) + 1,1) = symInput(j);
        end
    end

    J_q = jacobian(gq,q);

    state = [qd; q];
    for i = 1:length(q)
        con = jacobian(J_q(:,i),q);  
        matlabFunction(con,'File',['generated/convective/getDoubleJ',par.symNames{i}],'Vars',{state},'Optimize',false,'Sparse',true);
    end
    matlabFunction(J_q,'File','generated/getJacobian','Vars',{state},'Optimize',false);  
    toc
end