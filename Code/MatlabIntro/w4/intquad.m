function Q = intquad(m,n)
Q(1:m,1:n) = 0;
Q(m+1:2*m,1:2*n) = 2;
Q(1:2*m,1+n:2*n) = 1;
Q(m+1:2*m,1+n:2*n) = 3;
end