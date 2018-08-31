function w = move_me(v,a)
if nargin ==1
    a = 0;
    fprintf("%d yote",1)
end

i = find(v==a);
l = length(i);
v(i) = [];
v(end+1:end+l) = a;
w = v;
end