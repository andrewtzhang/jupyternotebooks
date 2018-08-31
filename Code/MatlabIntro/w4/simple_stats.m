function S = simple_stats(N)
si = size(N);
S([1:si(1)],1) = mean(N,2);
S([1:si(1)],2) = median(N,2);
S([1:si(1)],3) = min(N,[],2);
S([1:si(1)],4) = max(N,[],2);
end