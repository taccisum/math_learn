% Chapter 2-3

syms e x lamda
f = XObeyExpLaw();

fprintf('## 2.')
% X 为开园起至第一个游客到达的等待时间
fprintf('至多等待 3 分钟的概率 P(X<=3)=F(3)=%s\n', subs(f, [lamda, x], [0.4, 3]))
fprintf('至少等待 4 分钟的概率 P(X>=4)=1-F(4)=%s\n', 1-subs(f, [lamda, x], [0.4, 4]))
fprintf('等待时间为 (3,4) 分钟内的概率 P(3<=X<=4)=F(4)-F(3)=%s\n', subs(f, [lamda, x], [0.4, 4]) - subs(f, [lamda, x], [0.4, 3]))
fprintf("等待时间恰好 2.5 分钟的概率 P(X=2.5)=F'(2.5)dx=f(2.5)dx。其中 f 为密度函数，f(2.5)=%s=C，dx->0，因此 P(X=2.5)=0\n", ...
    subs(lamda*e^(-lamda*x), [lamda, x], [0.4, 2.5]))
% λe^(-λx)
fprintf('X 的概率密度函数 f(x) = %s\n', diff(subs(f, lamda, 0.4)))


fprintf('## 3.\n')
fprintf('1) 7 小时内完成的概率 P(X<=7)=F(7)=%f\n', XObeyExp(1/6, exp(1), 7))
fprintf('2) 已经充电 3 小时，在 7 小时内完成的概率 P(X<=a+t|X>a)=1-P(X>a+t|X>a)=1-P(X>t)=P(X<=t)=F(4)=%f\n', XObeyExp(1/6, exp(1), 4))


% 指数分布-分布律
function res = XObeyExpLaw()
    % X～E(λ)
    % F(x) = 
    %   0, x<0
    %   1-e^(-lambda*x), x>=0
    syms lamda x e
    res = piecewise(x<0, 0, x>=0, 1-e^(-lamda*x));
end

function res = XObeyExp(lamda, e, x)
    law = XObeyExpLaw();
    res = subs(law);
end

