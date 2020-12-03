syms a b c d

% a = k1
% b = k-1
% c = k2
% d = k3
H = sym([-a b 0 ; a -(a+b) c; a -c -d])
[T,E] = eig(H)
