%% secant method
%the secant method requires two previous values two calculate the root's
%aproximation
%x0, oldest value
%x1, newest value
%f, function which root should be found
%err, error
function [xr,er,n]=secant(x0,x1,f,err)
    %iterations
    n=1;
    %condition
    found = 0;
    while ~found
        xr = (x0*f(x1)-x1*f(x0))/(f(x1)-f(x0));
        er = abs((xr-x1)/xr);
        if er < err
            return
        end
        x0 = x1;
        x1 = xr;
    end
end