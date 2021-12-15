function integral=Simpson(a,b,N,aVector,bVector,n)
    % a,b are limits of integration.
    % N is the number of partitions for Simposon(must be positive even)
    % aVector and bVector are ak and bk (fourier coefficients: a_0 to a_n
    % n is the fourier summation upper limit
    
    
    % initialize answer
    integral=0;
    
    % check if N is positive even, exit if not
    if (mod(N,2)~=0) || (N<=0)
        fprintf("N must be postive and even!");
        exit
    end
    
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
    for i=1:(N/2-1)
        integral=integral+2*fx(2*i+1);
    end
    
    for i=1:(N/2)
        integral=integral+4*fx(2*i);
    end
    
    integral=integral+fx(1)+fx(N+1);
    integral=integral*h/3;
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