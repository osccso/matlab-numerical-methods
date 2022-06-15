%% Bolzano's Bisection method - root finding
%Root finding numerical method, where
%xl: lower bound
%xu: upper bound
%f: function
%xr: root
%ea: absolute error
%er: relative error
%fr: function evaluated at xr
%fl: function evaluated at xl
%fu: function evaluated at xu
%flag: determines if working with absolute(0) o relative error (1)
function [xr,er,ea,n] = bisection(xl,xu,f,err,flag)
%default values
xr = NaN;
er = NaN;
ea = NaN;
%iterations
n=1;
%check if values of xl and xu are valid
if f(xu)*f(xl)>0
    error('f(xu)*f(xl)>0 required for method to work');
end
%condition to quit while loop
found = 0;
xold = xl;
while ~found
    xr = (xl+xu)/2;
    fr = f(xr);
    fl = f(xl);
    fu = f(xu);
    %what if root is found
    if fr == 0
        return
    elseif fl == 0
        xr = xl;
        return
    elseif fu == 0
        xr = xu;
        return
    end
    %calculate errors
    er = abs((xr-xold)/xr);
    ea = abs(xr-xold);
    disp(er)
    %check flag and exit condition
    if flag
        if er < err
            found = 1;
            return
        end
    else
        if ea < err
            found = 1;
            return
        end
    end
    %assign new to old
    xold = xr;
    %check for condition to asign other values
    if fu*fr < 0
        xl=xr;
    else
        xu=xr;
    end
    n=n+1;
end
end