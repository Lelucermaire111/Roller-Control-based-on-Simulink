%ʹ�����ؿ��޷��Ե�Ч����������й���
%ǰ����Ϊ���Ƴ�����Ե�һ���Ž�
P_best = 11;
I_best = 10;
D_best = 6;
num = 0;
cnt = 10^7;
%�涨����Ϊ10^5*5
xmax = 10^5;
ymax = 15;
%���ɾ��ȷֲ��ĵ�
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
