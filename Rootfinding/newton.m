%% newton's method
%%in newton's method you have to provide the following arguments
%x0: initial point
%f: function
%df: derivate of the function
%desired error
function [xr,er,n] =newton(x0,f,df,err)
%condition for the root
found=0;
%iterations count
n=1;
while ~found
    xr = x0-f(x0)/df(x0);
    er = abs((xr-x0)/xr);
    if er<err
        return
    end
    n=n+1;
end