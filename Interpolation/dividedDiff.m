%divided differences 
function div = dividedDiff(x,y)
    yf = y(2:end);
    yi = y(1:end-1);
    lf = length(yf);
    li = length(yi);
    if length(yi)==1
        return
    end
    if ()
    div = (dividedDiff(yf)-dividedDiff(yi))/(x(lf)-x(li));
end