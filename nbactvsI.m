%%% units are fucked, will fix!!




k_1 = 10^-5; % association
k_2 = 10^-5; % dissociation
c_0 = 3;    %initial carbon dot conc.
V = 2; %2ml sample volume 
I = 0; % intensity
A = 3.14e-4; % area light shines on ???
t = 10; % 10ms integration time 
h = 6.62607004e-34;   % plancks constant
lamda = 5.19e-7; % wavelength output light
num_fimH_per = 250; % fimH per bacteria 


c = 3e6; % speed of light
v = c/lamda;
n = (I*A*t)/(h*v);

omega = 2372.87910797371;
n  = [15450,23000,33580,55980,126900,330900,419800]; % no. photons - josephines data  
c_steady = (omega*c_0-n)/omega;
I = (n*h*v)/(A*t);
% A = b_steady;
% B = (k_1*c_0-k_2).^2;
% C = 4*k_1*k_2;
% D = k_1*c_0+k_2;
% E = 2*k_1;
% G = E*A-D;
% 
% W = (2*G+C);
% P = W.^2;
% Q = 4*E^2*G*2;
% R = 2*E^2;

f_0 = c_0 + (k_2.*f_0)./(k_1.*c_steady+k_2) - c_steady;

n_bact = (f_0.*V)./(num_fimH_per);
hold on
%plot(f_0,n)
plot(n_bact,n)
grid on

% a = -k_1;
% b = -(k_1*c_0+k_2);
% c = k_2*f_0;
% f_0 = b_steady + (1/2*a)*(-b-sqrt(b^2-4*a*c));
% 
% plot(f_0, n)



