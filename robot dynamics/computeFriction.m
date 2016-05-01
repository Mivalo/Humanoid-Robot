function [ force ] = computeFriction( state )
%COMPUTEFRICTION Summary of this function goes here
%   Detailed explanation goes here
global par
force = state(length(state)/2+1:end)*par.cFriction;
end

