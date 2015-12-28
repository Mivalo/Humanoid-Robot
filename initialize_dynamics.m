clear all; close all;
[mass,symStates,symInput,gravity,kinematic,nodeSize] = create_structure();
generate_dynamics(symStates,symInput,mass,gravity,kinematic,'mat2fun');