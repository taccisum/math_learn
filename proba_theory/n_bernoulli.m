fprintf('------ n times bernoulli trails(X～B)\n');
syms n k p P
% n 重 bernoulli 试验概率
P = nchoosek(n,k) * p^k * (1-p)^(n-k);

% 结果为 1 的概率
p0 = 1/3;
% 试验次数
n0 = 4;
% 至多有 K 次结果为 1
K  = 0;

sum = 0;

fprintf('p=%f, n=%d, K=%d\n', p0, n0, K);
for k0 = 0:K
    res = subs(P, [n,k,p], [n0,k0,p0]);
    fprintf('P = %f | k=%d\n', res, k0);
    sum = sum + res;
end

fprintf('P = %f | k<=%d\n', sum, K);
fprintf('P = %f | k>%d\n', 1-sum, K);

