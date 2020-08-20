clc; clear;
%% part a

delta_x=0.000001;
x=0:delta_x:2*pi;
y= (exp(exp(i.*x) + exp(-i.*x))).*i.*exp(i.*x);

s=0;

s=sum(y.*delta_x) 

%% part b
n = 1:1:20;
sequence_a=1./((factorial(n)).*(factorial(n-1)));
% by using cumulative summation command,here the series S[n] will be
% created
sequence_S= cumsum(sequence_a);
figure()
stem(n,sequence_a)
title('{\color{blue}an versus n}')
xlabel('{\color{red}n}')
ylabel('{\color{red}an}')
figure()
stem(n,sequence_S)
title('{\color{blue}Sn versus n}')
xlabel('{\color{red}n}')
ylabel('{\color{red}Sn}')
figure()
p = 1 : 1 : 20;
q=(factorial(p-1))./(factorial(p+1));
stem(p,q)
title('{\color{blue}qn versus n}')
xlabel('{\color{red}n}')
ylabel('{\color{red}qn}')
% The proof of convergence according to q graph is almost obvious since q
% converges to zero and by ratio test the series converges
%here according to accuracy we choose first m of the sequence and then
%calculate its sum
format long
%sum of first p of the sequence according to report here p=7
y1=sequence_a(1:7);
sum(y1)
%sum of first p of the sequence according to report here p=10
y2=sequence_a(1:10);
sum(y2)