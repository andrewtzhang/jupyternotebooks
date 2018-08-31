function out = exp_average(in,b)
persistent o;
persistent b1;

if nargin ==2
    b1 = b;
    o = in;
    out = o;
end

if nargin ==1 && size(b1) == 0
    b = .1;
    o = in;
    out = o;
end

if nargin ==1 
    o = b1*in + (1-b1)*o;
    out = o;
end
end