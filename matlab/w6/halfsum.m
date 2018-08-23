function s = halfsum(A)
[row col] = size(A);
s = 0;
y=  0;
for r = 1:row
    x = row+1-r;
    y = y+1;
    s = s + sum(A(x,y:end));
end
end