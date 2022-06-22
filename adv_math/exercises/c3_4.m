syms e x
e = exp(1);

% 5.
% 主要考察积分的保序性
% 5.3)
% x>=x^2 | 0<=x<=1
% e^x 单调递增，因此 e^x >= e^(x^2) | 0<=x<=1
% 因此有 ∫e^xdx > ∫e^(x^2)dx | a=0,b=1
% 验证
res = int(e^x, x, 0, 1) - int(e^(x^2), x, 0, 1);
fprintf('res=%f>0=%d\n', res, res > 0)

% 5.4)
% x<-x | x∈[-1,0]，∴ e^x < e^(-x) | x∈[-1,0]
% ∴ ∫e^xdx < ∫e^(-x)dx | a=-1,b=0 ∴ ∫e^xdx > ∫e^(-x)dx | a=0,b=-1
res = int(e^x, x, 0, -1) - int(e^-x, x, 0, -1);
fprintf('res=%f>0=%d\n', res, res > 0)

% 5.5)
% {-pi/2,0}∫sinxdx < 0, {0,pi/2}∫sinxdx > 0
% ∴ {-pi/2,0}∫sinxdx < {0,pi/2}∫sinxdx
res = int(sin(x), x, -pi/2, 0) - int(sin(x), x, 0, pi/2);
fprintf('res=%f>0=%d\n', res, res > 0)

% 5.6)
% 根据三角函数的几何图形可知，{0,pi}∫sinxdx > 0, {0,pi}∫cosxdx = 0
% ∴ {0,pi}∫sinxdx > {0,pi}∫cosxdx
res = int(sin(x), x, 0, pi) - int(cos(x), x, 0, pi);
fprintf('res=%f>0=%d\n', res, res > 0)

% 5.7)
chapter = '5.7)';
% ∵ lnx 单调递增且 x∈[1,e] 时 lne∈[0,1], ∴ 令 t=lne | t∈[0,1]，易知 t>t^2
% ∴ lnx>lnx^2, x∈[1,e]
% ∴ {1,e}∫lnxdx > {1,e}∫lnx^2dx
f=log(x);
g=log(x)^2;
a=1;
b=e;
res = int(f, x, a, b) - int(g, x, a, b);
fprintf('%s res=%f>0=%d\n', chapter, res, res > 0)

% 5.8
chapter = '5.8)';
% 令 f(x)=e^x^2, 显然 f 单调递增
% ∴
% max(e^(x^2)) = e^(pi^2) | x∈[0,pi]
% min(e^(x^2)) = e^(pi^2) | x∈[pi, 2pi]
% 根据估值性质有，{0,pi}∫e^(x^2) <= e^(pi^2), {pi, 2pi}∫e^(x^2) >= e^(pi^2)
% ∴ {0,pi}∫e^(x^2) <= {pi, 2pi}∫e^(x^2)
f=e^(x^2);
g=f;
a1=0;
b1=pi;
a2=pi;
b2=2*pi;
res = int(f, x, a1, b1) - int(g, x, a2, b2);
fprintf('%s res=%f>0=%d\n', chapter, res, res > 0)


% 6.1)
chapter = '6.1)';
f=1/(1+x);
fprintf('%s 1/2<=%f<=1\n', chapter, int(f, x, 0, 1))






