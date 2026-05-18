function [x, psi] = initialize(N, dx)

x = linspace(-5, 5, N);

% Gaussian wave packet
x0 = -2;
k0 = 5;
sigma = 0.5;

psi = exp(-(x - x0).^2/(2*sigma^2)) .* exp(1i*k0*x);

% Normalize
psi = psi / sqrt(sum(abs(psi).^2)*dx);

end