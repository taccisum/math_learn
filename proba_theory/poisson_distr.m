fprintf('------ poisson distribution(X～P)\n');

% 泊松分布参数 λ，自然对数底 e，
syms lamda e
% 发生次数 k，发生概率 P
syms k P

% 泊松分布——分布律
P=lamda^k/factorial(k) * e^(-lamda);


fprintf('---- 例4\n解得 λ=3\n');
P0=subs(P, [lamda, k], [3, 0]);
P1=subs(P, [lamda, k], [3, 1]);
P2=subs(P, [lamda, k], [3, 2]);
P0_2=P0+P1+P2;
fprintf('P=%s | k=0\n', P0);
fprintf('P=%s | k=1\n', P1);
fprintf('P=%s | k=2\n', P2);
fprintf('P=%s | k<=2\n', P0_2);
fprintf('代入 e=%f，得 P=%f\n', exp(1), subs(P0_2, e, exp(1)));


fprintf('---- 例5\n')
fprintf('已知 λ=6，设每周需求量为 X，需要进货量为 n，要使得 P(X<=n)>=0.9，计算可得：\n');
for n = 0:20
    Pn=symsum(P, k, 0, n);
    res = subs(Pn, [lamda, e], [6, exp(1)]);
    fprintf('P(X<=%d)=%f\n', n, res);
    if (res >= 0.9)
        fprintf('成功找到不脱销概率大于 0.9 的结果，此时 n=%d\n', n);
        break;
    end
end



fprintf('---- 例6\n');
n=1000;
p=0.005;
fprintf('λ=np=%d*%f=%f\n', n, p, n*p);

fprintf('计算可得：\n')
for i = 0:15
    Pi = symsum(P, k, 0, i);
    fprintf('%f | k<=%d\n', subs(Pi, [lamda, e], [n*p, exp(1)]), i);
end
fprintf('查上表可知，投保人死亡数不超过 10 的概率是 98.63%%\n');









