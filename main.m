clc; clear; close all;

% Parameters
L = 10;              % space length
N = 200;            % grid points
dx = L/N;
dt = 0.001;
steps = 500;

% Initialize system
[x, psi] = initialize(N, dx);

% Solve Schrödinger equation
psi_all = schrodinger_solver(psi, N, dx, dt, steps);

% Plot results
plot_results(x, psi_all);