function q = reverse_diag(n)
q = zeros(n);
for x = 1:n
    q(x,n+1-x) = 1;
end
end