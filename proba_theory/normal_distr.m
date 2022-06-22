% Normal Distribution

gsize = 100;
n=1000;

fprintf('%d 次分组（每组 %d 个样本）掷骰子试验\n', n, gsize)
avgs = [];
for i = 1:n
    sample = randi([1, 6], 1, gsize);
    avg = mean(sample);
    avgs(end+1) = avg;
end

fprintf('%d 个分组均值的均值为 %f（标准误差 SD=%f），比单个均值更接近 3.5\n', n, mean(avgs), var(avgs))

figure('Name', '正态分布试验（掷骰子）', NumberTitle='off')

subplot(2,1,1)
plot(1:n, avgs)
xlabel('第 i 次试验')
ylabel('均值')
ylim([0, 6])

subplot(2,2,3)
h1 = histogram(avgs, 20);
title('均值分布（近似服从正态分布）')
xlabel('分组样本均值')
ylabel('出现次数')

subplot(2,2,4)
for i = 1:20
    x1(i) = (h1.BinEdges(i) + h1.BinEdges(i+1))/2;
end

plot(x1, h1.Values/n, 'o', 'MarkerSize', 5)
title('频率分布')
xlim([2,5])
clear


