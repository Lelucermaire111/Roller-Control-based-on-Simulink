function x = myTransitionFcn(x, u)
dt = 0.001;
g = 9.81;
m = 0.1;
r = 0.1;
R = 1;
x = x + [2/3*g/(r+R)*sin(x(2))+2/3/m/(r+R)*u*cos(x(2)); x(1)]*dt;
end

