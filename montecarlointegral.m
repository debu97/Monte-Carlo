function y = montecarlointegral(f,a,b,m)
n = 100000;
count = 0;
xn = a + (b-a)*rand(n,1);
yn = m*rand(n,1);
for i = 1:n
    if yn(i) <= f(xn(i))
    count = count + 1;
    end
end
A = m*(b-a);
y = A*(count/n);
figure;
plot(xn,f(xn));
end