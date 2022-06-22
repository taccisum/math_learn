% Chapter 2-2

fprintf('## 习题二\n')

fprintf('### 1.\n')
fprintf('---- 1)\n')
syms p k P
P=p * (1-p)^(k-1);
res=subs(P, p, 3/13);
fprintf('X～Ge(p)，即 %s=%s=\n', P, res);
pretty(res)

clear

fprintf('---- 2)\n')
% 2) 
fprintf('P(X=1)=%f\n', 10/13);
fprintf('P(X=2)=%f\n', 3/13 * 10/12);
fprintf('P(X=3)=%f\n', 3/13 * 2/12 * 10/11);
fprintf('P(X=4)=%f\n', 3/13 * 2/12 * 1/11 * 10/10);
fprintf('P(X>=5)=%f\n', 0);
clear

fprintf('---- 3)\n')
% 3)
fprintf('P(X=1)=%f\n', 10/13);
fprintf('P(X=2)=%f\n', 3/13 * 11/13);
fprintf('P(X=3)=%f\n', 3/13 * 2/13 * 12/13);
fprintf('P(X=4)=%f\n', 3/13 * 2/13 * 1/13 * 13/13);
fprintf('P(X>=5)=%f\n', 0);
clear

fprintf('### 2.\n')
syms n k p P
% P(X=k)
P = nchoosek(n, k) * p^k * (1-p)^(n-k);
% k = 1 时 subs(P, k, 1) -> n * p^1 * (1-p)^(n-1) -> np * (1-p)^(n-1)
% k = n-1 时 subs(P, k, n-1) -> n * p^(n-1) * (1-p) -> n(1-p) * p^(n-1)

% p 为 0 or 1 时，等式成立，有
Sp = [0, 1];
% p 不为 0 or 1 时，两边同时除于 p*(1-p)，有 (1-p)^(n-2) == p^(n-2)，再取对数，得
res = solve(log(1-p)==log(p));
Sp = [Sp, res];
fprintf('解得 p 的取值为：'); disp(Sp)

for p_i = Sp
    res = subs(P, [p, k], [p_i, 2]);
    fprintf('当 p=%s 时，P(X=2)=%s\n', p_i, res)
end
clear


fprintf('### 3.\n')
syms p n k
fprintf('设 X 为事件 A 出现的次数，则 X～B(p)\n')
P = nchoosek(n, k) * p^k * (1-p)^(n-k);
fprintf('已知 P(X>=1)=19/27，即 1-P(X=0)=1-19/27\n');
eqn = subs(P, [n, k], [3, 0]) == 1-19/27;
fprintf('代入二项分布律，有 %s\n', eqn);
p = solve(eqn, p, 'Real', true);
fprintf('解得事件 A 在一次试验中出现的概率 p=%s\n', p);
clear


fprintf('### 4.\n')
syms p n
p=0.4;
n=4;
fprintf('X～B(%d, %.1f)=%s | k <= %d\n', n, p, subs(XobeyBLaw()), n);
clear


fprintf('### 5.\n')
syms p n k
p=1/4;
n=10;
% 根据题意，显然有 X～B(n,p)
fprintf('设正确的题目数为 X，则 X～B(10, 1/4)。根据二项分布律易得 P(X=0)=%f\n', XobeyB(n, 0, p));
fprintf('至少答对 6 题，即 P(X>=6)=1-P(X<6)=%f', 1 - symsum(XobeyB(n, k, p), k, 0, 5));
clear



fprintf('### 6.\n')
% 已知 N(t)～P(λt)，t 以周为单位，显然每周发生地震的次数 λ0=λt/t=λ，对任意时间有 N～P(λ)
% P(N=0)
syms lamda e
P0=XobeyN(e, lamda, 0);
Pi=[XobeyN(e, lamda, 1), XobeyN(e, lamda, 2), XobeyN(e, lamda, 3)];
fprintf('P(N=0)=%s\n', P0);
fprintf('P(N=1)=%s\n', Pi(1));
fprintf('P(N=2)=%s\n', Pi(2));
fprintf('P(N=3)=%s\n', Pi(3));

% 相邻两周内发生三次地震的概率 2*P(0)*P(3) + 2*P(1)*P(2)
2*P0*Pi(3) + 2*Pi(1)*Pi(2)





clear













% 定义通用 functions

% 二项分布 X～B(p)
function res = XobeyBLaw()
    % 二项分布——分布律
    syms n k p
    res = nchoosek(n, k) * p^k * (1-p)^(n-k);
end
function res = XobeyB(n, k, p)
    P = XobeyBLaw();
    res = subs(P);
end

% 泊松分布 X～N(λ)
function res = XobeyNLaw()
    % 泊松分布——分布律
    syms e lamda k
    res = lamda^k/factorial(k) * e^(-lamda);
end
function res = XobeyN(e, lamda, k)
    law = XobeyNLaw();
    res = subs(law);
end 







