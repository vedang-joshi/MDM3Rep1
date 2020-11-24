% % MAPPING: super constant = B(1),    c_steady = B(2), 
c_0_fit = @(B,n) ((1/B(1))*(n+B(1)*B(2)));                     % Function To Fit     n = super_constant*b_steady = superconstant(c_0-c_steady)
n  = [15450,23000,33580,55980,126900,330900,419800];              % Data
c_0 = ([3,6,12.5,25,50,100,200]);
SSECF = @(B) sum((c_0 - c_0_fit(B,n)).^2);                % Sum-Squared-Error Cost Function
B0 = [1, 100];                                            % Choose Appropriate Initial Values
[B_est, SSE] = fminsearch(SSECF, B0)                   % Estimate Parameters
figure(1)                                               % Plot Results
plot(log2(c_0), n, 'bp')
hold on
plot( log2(c_0_fit(B_est,n)),n, '-r')
hold off
grid
xlabel('log2 carbon dot conc.');
ylabel('photon events x10^5');
legend('data','fitted curve');
