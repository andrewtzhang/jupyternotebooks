function out = small_elements(x)
[row col] = size(x);
out = [];

for r = 1:row
    for c = 1:col
        if(x(r,c)<(r*c))
            out = cat(1,out,[r c]);
        end
    end
end
end