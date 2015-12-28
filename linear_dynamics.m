function robotlin = linear_dynamics()
    [mass,symStates,symInput,gravity,kinematic] = create_structure_2D();
    robotlin = generate_dynamics(symStates,symInput,mass,gravity,kinematic,'dyn2sym');