function s = sum3and5muls(n)
num3 = 0:3:n;
num5 = 0:5:n;
c = cat(2,num3,num5);
c = unique(c);
s = sum(c);
end