function w = move_me(v,a)
w = v;
x = 1;
if nargin ==1
    a = 0;
    fprintf("%d yote",1)
end
while x <= length(v)
    if v(x)==a
        
    fprintf("%d yote",x)
        if x == 1
            w = [w(x+1:end),w(x)];
        elseif x == length(v)
            x=x+1;
        elseif x>1 && x<length(v)
           w = cat(2,w(1:x-1),w(x+1:end),w(x));
           x= x+1;
        end
        
    else
        x = x+1;
    end
end

end