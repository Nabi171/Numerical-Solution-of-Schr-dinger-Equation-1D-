function psi_all = schrodinger_solver(psi, N, dx, dt, steps)

psi_all = zeros(N, steps);

V = zeros(1, N); % free particle potential

for t = 1:steps
    psi_new = psi;

    for i = 2:N-1
        psi_new(i) = psi(i) + 1i*dt/2 * ...
            ((psi(i+1) - 2*psi(i) + psi(i-1))/dx^2 - V(i)*psi(i));
    end

    psi = psi_new;
    psi_all(:, t) = psi;
end

end