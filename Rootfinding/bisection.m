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
function [xr,er,ea] = bisection(xl,xu,f,err,flag)
%check if values of xl and xu are valid
if f(xu)*f(xl)>0
    xr = NaN;
    er = NaN;
    ea = NaN;
    error('f(xu)*f(xl)>0 required for method to work');
end
found = 0;
xold = xl;
while ~found
    xr = (xl+xu)/2;
    fr = f(xr);
    fl = f(xl);
    fu = f(xu);
    %calculate errors
    er = abs(xr-xold)/xr;
    ea = abs(xr-xold);
    %check flag and exit condition
    if flag
        if er < err
            found = 1;
        end
    else
        if ea < err
            found = 1;
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
end