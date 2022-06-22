% 泰勒展开
clear
syms e x

P=taylor(e^x)

fprintf('## 简单的 f(x)=e^x 五阶展开，a=0（即 5 阶麦克劳林展开式）\n')
fprintf('P=%s\n', P)

e=exp(1);
n=4;
exp(1/3)
fprintf('%f\n',subs(e^x/factorial(n+1)*x^(n+1), 1/3))
x=1/3;
fprintf('%f\n', subs(P))

approxs=[];
reals=[];
errors=[];
for deno = 1:10
    x = deno / 10;
    approx = subs(P);
    real = exp(1)^x;
    error = real - approx;
    approxs(end+1) = approx;
    reals(end+1) = real;
    errors(end+1) = error;
    fprintf('使用泰勒展开近似求 P(x=%.1f)=%f, f(%.1f)=e^%.1f=%f，误差为%f\n', x, approx, x, x, real, error);
end

figure
x_axis=[1:10]/10;   % x 轴

subplot(1,2,1)
plot(x_axis, reals, 'r--')
hold on
plot(x_axis, approxs, 'b+')
title('f(x)=e^x | a=0')
legend('e^x', 'P_5(x)')
xlabel('x');
ylabel('f(x)');


subplot(1,2,2)
plot(x_axis, errors, '-')
title('误差');
legend('e^x-P_5(x)');
xlabel('x');


