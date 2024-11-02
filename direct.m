clear;clc;
xi = [0,40,80,120,160,200,240,280,320,360]';
yi = [50.3,51.4,32.7,9.22,6.22,14.7,23.6,32.5,41.4,50.3]';
n = length(xi);
v = ones(n);

for i = 1:n
    for j = 1:n
        V(i,j) = xi(i)^(j-1);
    end
end

a = inv(v)*yi;
xs = [35,110,250]';
for i = 1:length(xs)
    ys(i)=a(1)+a(2)*xs(i)+a(3)*xs(i)^2+a(4)*xs(i)^3+a(5)*xs(i)^4+a(6)*xs(i)^5+a(7)*xs(i)^6+a(8)*xs(i)^7+a(9)*xs(i)^8+a(10)*xs(i)^9;
end

figure;
plot(xs,ys,'r*',xi,yi,'ko-');