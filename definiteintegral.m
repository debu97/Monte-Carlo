a = 0;
b = pi/2; 
x = a:0.01:b;
exp = sin(x);
f = @(x)sin(x);         % passing function to a function ,i.e function handle
plot(x,exp);
title('sin(x) from 0 to pi/2');
xlabel('x');
ylabel('f(x)');
I = montecarlointegral(f,a,b,max(exp))