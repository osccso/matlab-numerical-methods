%divided differences 
function div = dividedDiff(x,y)
    yf = y(2:end);
    yi = y(1:end-1);
    lf = length(yf);
    li = length(yi);
    if length(yi)==1
        return
    end
    for i=1:
    div = (dividedDiff(yf,y)-dividedDiff(yi,y))/(x(lf)-x(li));
end