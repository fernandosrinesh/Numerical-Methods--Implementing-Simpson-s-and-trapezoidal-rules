% this is a test for the fourier series of f(x)=x
% an=(2*(-1)^n) /n for n>=1. bn is zero for all n

% we will take fourier series of order n=30
aVector=zeros(31,1);
bVector=zeros(31,1);
% calculate ak
for k=2:31
    % these are ak. remember, indices are shifted bcs vectors in matlab
    % start with index 1, not 0.
    aVector(k)=(2*(-1)^k)/(k-1);
end

% call simpson and trapezoidal rules, for N=26,
% limits of integration 0 to 1. answer is expected to be 0.5

Trap(0,1,26,aVector,bVector,30)
Simpson(0,1,26,aVector,bVector,30)