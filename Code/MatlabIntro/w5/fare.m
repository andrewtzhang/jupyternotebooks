function f = fare(d,a)
d = round(d);
f = 2;
if d>1 && d<=10
    f = 2 + (d-1)*.25;
elseif d>10 
    f = 4.25 + (d-10)*.1;
end

if a>= 60 || a <= 18
    f = f * .8;
end
end