function integral=Trap(a,b,N,aVector,bVector,n)
    % a,b are limits of integration.
    % N is the number of partitions for Trapezoidal rule
    % aVector and bVector are ak and bk (fourier coefficients: a_0 to a_n
    % n is the fourier summation upper limit
    
    
    % initialize answer
    integral=0;
    
    
    % partitions width
    h=(b-a)/N;
    % initialize the vector that will hold our function values
    fx=zeros(1,N+1);
    % calculate the values of the function at each point, store in the
    % vector fx
    for i=0:N
        % evaluate at a+ih. The our_function is defined below
        fx(i+1)=our_function(aVector,bVector,n,a+i*h);
    end
    
    % apply Simpson's rule, each summation term is done alone for
    % readability.
    for i=1:N-1
        integral=integral+fx(i+1);
    end
    
    integral=integral+(fx(N+1)+fx(1))/2;
    integral=integral*h;
    % end of simpson
end



% this function is just the form of the intended function needed.
% it takes aVector and bVector(ak and bk), and the summation upper limit n,
% and a value x to evaluate on.
function answer=our_function(aVector,bVector,n,x)
    answer=0;
    for k=0:n
        answer=answer+aVector(k+1)*sin(k*x)+bVector(k+1)*cos(k*x);
    end
end