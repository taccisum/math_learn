% 例 4
syms n p
fprintf('X～B(0,p), E(X)=%s\n', (1-p)* 0 + p*1)

% P(X=k)=C_nk*p^k*(1-p)^(n-k) | 0<k<=n
% sum(k*P(X=k), k, 0, n)x = np（TODO:: 级数求和，下泊松分布同）
fprintf('X～B(n,p), E(X)=%s\n', (1-p)* 0 + p*n)
% P(X=k)=λ^k*e^(-λ)/k!
% sum(k*P(X=k))=λ
fprintf('X～P(λ), E(X)=λ\n')

% 习题
fprintf('1. \n')
fprintf('E(X)=-2*0.3+0*0.2+1*0.5=%f\n', -2*0.3+0*0.2+1*0.5)
fprintf('E(X^2)=(-2)^2*0.3+0^2*0.2+1^2*0.5=%f\n', (-2)^2*0.3+0^2*0.2+1^2*0.5)
fprintf('E(3X^2+5)=((-2)^2*3+5)*0.3+5*0.2+(1^2*3+5)*0.5=%f\n', ((-2)^2*3+5)*0.3+5*0.2+(1^2*3+5)*0.5)


fprintf('2. \n')
lamda=2;
n=2;
p=0.5;
EX=1/lamda;
EY=n*p;
fprintf('E(X)=λ=%.2f, E(Y)=np=%.2f\n', EX, EY)
fprintf('E(X-3Y-1)=E(X)-3E(Y)-1=%.2f\n', EX-3*EY-1)


fprintf('3. \n')
n=10;
p=0.6;
EX=n*p;
EX2 = n*p*(n*p-p+1);
fprintf('X~B(10, 0.6), E(X)=np=%.2f\n', EX)
fprintf('E(X^2)=np(np-p+1)=%.2f\n', EX2)
fprintf('E(2X^2+3)=2E(X^2)+3=%.2f\n', 2*EX2+3)

fprintf('4. \n')
clear
syms x
% F=∫xf(x)dx=∫x*3/8x^2dx
F=3/32 * x^4;
fprintf('E(X)={0,2}∫3/8x^2dx=%.2f\n', subs(F, 2) - subs(F, 0))
% F=∫x^2f(x)dx=∫x^2*3/8x^2dx
F=3/40 * x^5;
fprintf('E(X^2)=%.2f\n', subs(F, 2) - subs(F, 0))
% F=∫x^(1/2)f(x)dx=∫3/8dx
F=3/8*x;
fprintf('E(X^2)=%.2f\n', subs(F, 2) - subs(F, 0))


fprintf('5. \n')
% Y=X>pi/3
syms x
FX=x*sin(x/2)+2*cos(x/2);
fprintf('E(X)=%.2f\n', subs(FX, pi) - subs(FX, 0))
fprintf('显然 P(X>=pi/3)=[F(X)]{pi/3, pi} = %f\n',subs(sin(x/2), pi) - subs(sin(x/2), pi/3))
fprintf('观察 4 次，Y~B(4, 0.5)，因此 E(Y)=np=%f\n', 4*0.5)


fprintf('6. \n')
a=1001;
b=2000;
fprintf('E(X)=(a+b)/2=(1001+2000)/2=%f\n', (a+b)/2)







