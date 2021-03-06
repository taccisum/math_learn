clear
% 4.
fprintf('4. -9y+z+2=0\n');

% 5.
% A(x-1) + B(y-1) + C(z+1) + D = 0
% Ax+By+Cz-A-B+C = 0
% 过原点，可知 D=A+B-C = 0，即 C=A+B
% 平台 4x+3y+z=1 法线 (4,3,1)
% (A,B,C) 垂直 (4,3,1) 有 4A+3B+C=0，代入 C，得 5A+4B=0，A=-4/5B
% 代入点法式方程，消去 A/B/C 得
fprintf('5. -4x+5y+z=0\n');

% 6.
% 过 z 轴，即法线为 (A,B,0)，且 D=0
% 点法式方程为 Ax+By=0
% 又过点 M(-3,1,2)，代入得 -3A+B=0, B=3A
% 代入原方程有 Ax+3Ay = 0，消去 A
fprintf('6. x+3y=0\n');

% 7.
A=[2,3,0];
B=[-2,-3,4];
C=[0,6,0];
AB=B-A;
AC=C-A;
% 求得法线n 为向量 AB AC 外积
n=cross(AB, AC);
syms x y z
fprintf('7. %s\n', sum((n/4).*[x,y,z]))

% 8.
% 截距 a=b=c=m，根据截距式方程有 (x+y+z)/m=1
% 过点 A(1,-4,5)，代入得 m = 2，因此
fprintf('8. x+y+z=2\n')

% 10.
% 将 5 移至右边，两边同除 -5，得 -(6/5x+1/5y+6/5z)=1
% 根据截距式方程定义，有 
a=-6/5; b=-1/5; c=-6/5;
% 平面 6x+y+6z+5=0 与坐标面围成的体积为
S=a*b*c/6;
% 设目标平面截距分别为 a'=λa, b'=λb, c'=λc，则单位体积 Se = λ^3*S = 1，求得
lamda = (1/S)^(1/3);
fprintf("10. λ=%f, a'=%f, b'=%f, c'=%f\n", lamda, lamda*a, lamda*b, lamda*c)

% 11.
syms k
n1 = [1,k,-2];
n2 = [2,-3,1];
% 法线夹角=平面夹角=pi/4
% |n1|, |n2|
mod_n1 = sqrt(sum(n1.^2));
mod_n2 = sqrt(sum(n2.^2));

% |n1xn2|
mod_cross_n1n2 = sqrt(sum(cross(n1, n2).^2));
% 由 |n1xn2| = |n1||n2|sinθ，解得
fprintf('11. k=%s\n', join(string(solve(mod_cross_n1n2 - mod_n1 * mod_n2 * sin(pi/4), k)), ', '))

% 13.
% xOy 面，即 A=0, B=0, D=0，点法式方程可表示为 Cz=0，即 z=0
n1=[0,0,1];
% 平面 5x-14y+2z-8=0
n=[5,-14,2];
mod_n=sqrt(sum(n.^2));  % 15
mod_n1=sqrt(sum(n1.^2)); % 1

fprintf('13. %.2fpi\n', asin( ...
    sqrt(sum(cross(n, n1).^2))/ ...
    (mod_n*mod_n1) ...
)/pi)

















