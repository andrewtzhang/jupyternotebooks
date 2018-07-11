function [m, a] = sindeg(deg)
m = sin((pi*deg)/180);
a = mean(mean(m));
end