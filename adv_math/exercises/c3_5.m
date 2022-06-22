
fprintf('2.2) y=\n')
pretty(1/2*cos(x)*x^(-1/2))

fprintf('2.3) y=\n')
% y=-{5,x^2}∫sint/t dt
%  =-sin(x^2)/x^2 * (x^2)'
pretty(-sin(x^2)/x^2 * 2*x)

fprintf('2.4) y=\n')
% y={c, x^2}∫(1+t^3)^(1/2)dt - {c, 2x}∫(1+t^3)^(1/2)dt
%  =(1+(x^2)^3)^(1/2)*(x^2)' - (1+(2x)^3)^(1/2)*(2x)'
pretty((1+(x^2)^3)^(1/2)*2*x - (1+(2*x)^3)^(1/2)*2)

fprintf('2.8) y=\n')
% y=cos(pi*(cos(x)^2))cos'(x) - cos(pi*(sin(x)^2))sin'(x)
%  =-cos(pi*(cos(x)^2))sin(x) - cos(pi*(sin(x)^2))cos(x)
pretty(-cos(pi*(cos(x)^2))*sin(x) - cos(pi*(sin(x)^2))*cos(x))

fprintf('3. ')
% g(x^2-1)*(x^2-1)'=-1
% g(x^2-1)*2x = -1
% 令 t = x^2-1，则 x = sqrt(1+t)
% g(t) = -1/2x = -1/2*sqrt(1+t)
syms t
fprintf('g(x)=\n')
pretty(-1/2*sqrt(1+t))
fprintf('=%.2f\n', -1/2*sqrt(1+3))


fprintf("4. f'(x)=\n")
% f'(x)=arctan(1+sin(x)^2)*sin'x - arctan(1+x^2)*(-x)'
pretty(atan(1+sin(x)^2)*cos(x) - atan(1+x^2)*-1)
fprintf("f'(0)=atan(1)+atan(sin(0)+1)*cos(0)=%f\n", atan(1)+atan(sin(0)+1)*cos(0))

fprintf('4. dy/dx=\n')
% dy=d[0,t}∫sin(u)^2du
% dx=d[0,t}∫cos(u)^2du
% ∴ dy/dx = (dy/dt)/(dx/dt) = d[0,t}∫sin(u)^2du/dt / d[0,t}∫cos(u)^2du/dt
% ∴ dy/dx = sin(t)^2/cos(t)^2 =
pretty(1/sin(t)^2 - 1)


fprintf('5. dy/dx=\n')
syms e x y
% {0,y}∫e^(-t^2)dt = -{0,x}∫cos(t^2)dt
% d{0,y}∫e^(-t^2)dt/dx = -d{0,x}∫cos(t^2)dt/dx
% e^(-y^2)y' = -cos(x^2)
% dy/dx =
pretty(-cos(x^2) / e^(-y^2))











