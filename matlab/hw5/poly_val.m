function  p = poly_val(c0,c,x)

try
    c = c(:).';
    p = c0 + sum(c.*x.^[1:length(c)]);
catch
    p = c0;
    return
end
end
