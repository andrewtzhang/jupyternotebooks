function Q = intquad(n,m);
Q(1:n,1:m) = 0;
Q(n+1:n,1:m) = 1;
Q(1:n,1+m:m) = 2;
Q(n+1:n,1+m:m) = 3;
end