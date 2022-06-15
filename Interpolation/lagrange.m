%lagrange method of interpolation
%x, array of x values of the form [x0,x1,...]
%y, array of y values of the form [y0,y1,....]
%xi, value for which yi=p(xi), where p is the lagrange interpolation
%polynomial
function [yi] =lagrange(x,y,xi)
%check sizes
if size(x,2)~=size(y,2)
    error('Arrays sizes should be equal')
end
n = size(x,2);
%preallocating space
Larray = zeros(1,n);
for i=1:n
    % product acumulated value
    product = 1;
    for j=1:n
        if j==i
            continue
        end
        product=(xi-x(j))/(x(i)-x(j))*product;
    end
    Larray(i)=product;
end
disp(Larray)
%calculation of p(xi)
yi = sum(y.*Larray);
return
end