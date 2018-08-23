function acc =  eligible(v,q)
if (v>88) && (q>88) && (mean([v,q])>=92)
    acc = true;
else
    acc = false;
end
end