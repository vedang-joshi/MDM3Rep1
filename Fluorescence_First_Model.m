syms S0(t) S1(t)

k = 0.1
l = 0.1


ode1 = diff(S0) == -k*S0 + l*S1;
ode2 = diff(S1) == k*S0 - l*S1;
odes = [ode1; ode2]

cond1 = S0(0) == 10;
cond2 = S1(0) == 0;
conds = [cond1; cond2];
[B_n(t), B_e(t)] = dsolve(odes,conds)

fplot(B_n)
xlim([0 40])
ylim([-5 15])
hold on
fplot(B_e)
xlim([0 40])
ylim([-5 15])
grid on
legend('B_n(t)','B_e(t)','Location','best')
xlabel('Time t (secs)') 
ylabel('Concentration (a.u.)') 
