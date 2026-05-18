function plot_results(x, psi_all)

for t = 1:10:size(psi_all,2)
    plot(x, abs(psi_all(:,t)).^2, 'b', 'LineWidth', 2);
    xlabel('Position');
    ylabel('Probability Density |ψ|^2');
    title('Time Evolution of Wave Packet');
    ylim([0 1]);
    grid on;
    pause(0.05);
end

end