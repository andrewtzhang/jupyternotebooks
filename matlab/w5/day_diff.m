function day =  day_diff(m1, d1, m2, d2)
md = [31.,28.,31.,30.,31.,30.,31.,31.,30.,31.,30.,31.];
try
if ~((size(m1)==1)&(size(m2)==1)&(size(d1)==1)&(size(d2)==1))
    day = -1;
    return
elseif m1>12. || m1<1. || m2>12. || m2<1.
    day = -1;
    return
elseif ((mod(m1,1) ~= 0)||(mod(m2,1) ~= 0)||(mod(d1,1) ~= 0)||(mod(d2,1) ~= 0))
    day = -1;
    return
elseif d1<1. || d2<1. || d1>md(m1) || d2>md(m2)
    day = -1;
    return
end 
catch
    day = -1
    return
end
if m1==m2
    day = abs(d1-d2);
    return
end
if m1<m2
    day = md(m1)-d1 + sum(md(m1+1:m2-1)) + d2;
end
if m2<m1
    day = md(m2)-d2 + sum(md(m2+1:m1-1)) + d1;
end
end