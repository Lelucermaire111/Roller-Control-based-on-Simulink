function y = func(x,P,I,D)
g = 9.81;
r = 0.1;
R = 1;
k = 2/3*g/(r+R);
y = ((I-D*x^2)^2+P^2*x^2)/(((P-k)*x-x^3)^2+(I-D*x^2)^2);
end

