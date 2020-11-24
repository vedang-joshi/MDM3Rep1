syms B_n(t) B_i(t) B_e(t) 
k = 0.1 %k1
l = 0.07 %k-1
n = 0.08 %k-2
o = 0.01 %k3


ode1 = diff(B_n) == -k*B_n + l*B_i;
ode2 = diff(B_i) == k*B_n - l*B_i - k*B_i + n*B_e;
ode3 = diff(B_e) == l*B_i - n*B_e - o*B_e;
odes = [ode1; ode2; ode3]

cond1 = B_n(0) == 10;
cond2 = B_i(0) == 0;
cond3 = B_e(0) == 0;
conds = [cond1; cond2; cond3];
[B_n(t), B_i(t), B_e(t)] = dsolve(odes,conds)
%B_n(t) = simplify(dsolve(ode1))
%B_i(t) = simplify(dsolve(ode2))
%B_e(t) = simplify(dsolve(ode3))

fplot(B_n)
xlim([0 350])
ylim([0 10])
hold on
fplot(B_i)
xlim([0 350])
ylim([0 10])
hold on
fplot(B_e)
xlim([0 350])
ylim([0 10])
grid on
legend('B_n(t)','B_i(t)', 'B_e(t)','Location','best')
xlabel('Time t (secs)') 
ylabel('Concentration (a.u.)') 
