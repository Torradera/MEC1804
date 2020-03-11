function u = f(t)
    y = exp(-t)
endfunction

function y_ponto = g(t,y)
    y_ponto = -exp(t)
endfunction

function [t,y] = euler(a,b,h,y0)
    t = a:h:b
    n = length(t);
    y(1) = y0
    for i = 1:n-1
        y(i+1) = y(i) + g(t(i),y(i))*h;
    end
endfunction

[t,ye] = euler[0,2.5,0.5,1]

plot(t', ye, 'o')

a = -0.5:.01:3;
b = f(a);
plot(a,b)
