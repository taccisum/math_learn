% 例2
% 1) X~B(1,p)
clear
syms n p
fprintf('2.1)\n')
EX = p;
fprintf('E(X) = 0*(1-p) + 1*p = %s\n', EX)
EX2 = p;
fprintf('E(X^2) = 0^2*(1-p) + 1^2*p = %s\n', EX2)
DX = p*(1-p);
fprintf('D(X) = E(X^2) - E(X)^2 = %s\n', DX)
% ~X 表示均值
fprintf('E(~X) = E(X) = %s\n', EX)
fprintf('D(~X) = D(1/n*sum(Xi)) = = 1/n^2 sum(D(Xi)) = 1/n^2 * n*D(X) = %s\n', DX/n)
ES2 = DX;
fprintf('E(S^2) = D(X) = %s\n', ES2)
fprintf('E(1/n * sum{1,n} Xi^2) = 1/n sum{1,n}E(Xi^2) = E(X^2) = %s\n', EX2)

% 2) X~E(λ)
clear
syms n p lamda
fprintf('2.2)\n')
% X~E(λ)，则 E(X)=1/λ
EX = 1/lamda;
fprintf('E(X) = %s\n', EX)
EX2 = 2/lamda^2;
fprintf('E(X^2) = %s\n', EX2)
DX = EX2 - EX^2;
fprintf('D(X) = E(X^2) - E(X)^2 = %s\n', DX)
% ~X 表示均值
fprintf('E(~X) = E(X) = %s\n', EX)
fprintf('D(~X) = 1/n*D(X) = %s\n', DX/n)
ES2 = DX;
fprintf('E(S^2) = D(X) = %s\n', DX)
fprintf('E(1/n * sum{1,n} Xi^2) = 1/n sum{1,n}E(Xi^2) = E(X^2) = %s\n', EX2)




