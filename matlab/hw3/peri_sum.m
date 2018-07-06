function s = peri_sum(A);
s = sum(A(1,1:end));
s = s + sum(A(end,1:end));
s = s + sum(A(1:end,1));
s = s + sum(A(1:end,end));
end