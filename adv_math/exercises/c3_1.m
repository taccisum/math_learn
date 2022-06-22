syms e x n
int(2^x, 'x')

% 2.17)
% (2^x+3^x)^2 = 2^2x + 3^2x + 2*6^x
syms x
int(...
    2^(2*x)+ ...
    3^(2*x)+ ...
    2*6^x, 'x')
clear

% 2.25)
syms e x
% (e^(x+n))' = e^(x+n)
int(e^(x+2), 'x')
clear

% 2.26)
syms e x
% 3^2x * e^x = (9*e)^x
F = int((9*e)^x, 'x')
assert(F == int(3^(2*x) * e^x, 'x'))
clear


%
fprintf('## 3.\n')
syms x C
k = 4*x^3 - 1;
f = int(k, 'x') + C;
fprintf('根据求积公式易知，斜率 k 的原函数 f(x)=%s\n', f)
% f(1) = 3
C = solve(subs(f == 3, x, 1));
fprintf('曲线经过点 (1,3)，解得常数 C = %s\n', C)
fprintf('因此 f(x)=%s\n', subs(f))
clear










