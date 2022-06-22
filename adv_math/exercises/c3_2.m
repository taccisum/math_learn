% 
fprintf('## 例2.\n')
% ∫1/(1+2x)dx
% ∫(1+2x)^-1 dx = 1/2 * ∫(1+2x)^-1 d(1+2x) = 1/2 ∫u^-1 du
% = 1/2*ln|u| = 1/2*ln(1+2x) + C
syms x C
fprintf('∫1/(1+2x)dx = %s\n', int(1/(1+2*x), 'x') + C)

diff(log(x+1/2)/2, 'x')
diff(e^x, 'x')
