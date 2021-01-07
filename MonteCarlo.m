%使用蒙特卡罗法对等效噪声带宽进行估计
%前三行为估计出的相对的一组优解
P_best = 11;
I_best = 10;
D_best = 6;
num = 0;
cnt = 10^7;
%规定区域为10^5*5
xmax = 10^5;
ymax = 15;
%生成均匀分布的点
x = unifrnd(0,xmax,[1,cnt]);
y = unifrnd(0,ymax,[1,cnt]);
es = eye(1,cnt);
res_min = 1000;
for P = 7:20
    for D = 1:20
        for I = 1:20
            for j = 1:cnt
                es(j)=func(x(j),P,I,D);
            end
            frequency = sum(y < es)/cnt;
            res = ymax*xmax*frequency;
            if res<res_min
                res_min=res;
                val = [P,I,D];
            end
        end
    end
end 
