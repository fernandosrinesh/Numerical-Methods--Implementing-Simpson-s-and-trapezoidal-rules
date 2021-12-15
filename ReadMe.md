
**Numerical Methods I – Project 2 Report**

**Problem** 


Report Content:  

- Programming Fourier Series Form
- Programming Simpson’s Approach
- Programming Trapezoidal Rule’s Approach
- Testing
- Conclusion
















- **Programming Fourier Series Form:**

A helper function is programmed, which evaluates the following expression:

fx=b0+k=1naksinkx+bkcoskx

Given the sequences ak, bk for k=0 to n (a0 is arbitrary), n, and x, the function evaluates the expression, see below the used function (used in both Simpson’s and Trap scripts).






- **Programming Simpson’s Approach:**

The script is composed of the following steps:

1. Initializing the variable h which holds the partitions width.
1. Initializing the variable fx, holds our function’s value on the points of the partitions a+ih.
1. Looping to implement Simpson’s rule, the image shown below.





The code can be found below:






- **Programming Trapezoidal Rule’s Approach:**

The script is composed of the following steps:

1. Initializing the variable h which holds the partitions width.
1. Initializing the variable fx, holds our function’s value on the points of the partitions a+ih.
1. Looping to implement Trapezoidal rule, the image shown below.




The code can be found below:

- **Testing:**

A test for the function f(x)=x is performed, integrating from 0 to 1, with number of partitions N=26, and Fourier Series of order n=30.

As can be concluded by the answers of the scripts, comparing them to the expected answer of 0.5, both approaches gave accurate reliable results.

The following is the test script:

And the following is the result of running the script:


- **Conclusion**

**I would like to say that both the Simpson’s and Trapezoidal approaches were efficient and gave approximately the same result for the same number of partitions.**

