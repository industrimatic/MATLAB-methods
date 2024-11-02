clear;clc;
xi = [0,40,80,120,160,200,240,280,320,360]';
yi = [50.3,51.4,32.7,9.22,6.22,14.7,23.6,32.5,41.4,50.3]';
xs = [35,110,250]';

ys = lagrange(xi,yi,xs);

plot(xs,ys,'r*',xi,yi,'ko-');

function ys = lagrange(xi,yi,xs)

    n = length(xi);
    m = length(xs);
    l = ones(m,n);
    for i =1:m
        for j = 1:n
            for k = 1:n
                if j ~= k
                    l(i,j) = l(i,j)*(xs(i)-xi(k))/(xi(j)-xi(k));
                end
            end
        end
    end
    ys = l*yi;

end

