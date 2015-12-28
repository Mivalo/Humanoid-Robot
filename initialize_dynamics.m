clear all; close all;
global par 
par = set_parameters();
[symStates,symInput,kinematic] = create_structure();
generate_dynamics(symStates,symInput,kinematic);