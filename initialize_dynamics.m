clear all; close all;
path = genpath(pwd);
addpath(path);

set_parameters();
[symStates,symInput,kinematic] = create_structure();
generate_dynamics(symStates,symInput,kinematic);