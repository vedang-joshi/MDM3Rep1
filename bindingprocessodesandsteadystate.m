k_1=1.2;  %k+
k_2=2.9;  %k-
f_0=4;
c_0=5;




steady_state = (-b-sqrt(b^2-4*a*c))/(2*a)

funcf = @(t,f) [a*f^2 + b*f + c];

[t ,f] = ode45(funcf, [0 3], f_0);

c = f + c_0 - f_0;
b = c_0 - c ;

 hold on
 grid on
 plot(t,f)
 plot(t,c)
 plot(t,b)
 legend('f','c','b')
 f(53)









