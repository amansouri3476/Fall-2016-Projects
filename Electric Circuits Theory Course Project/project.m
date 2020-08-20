clc; clear;
%blue curves indicates absolute values of transform function and red curves
%indicate phase angles of each transform function

%% %q1 part b
x = -20:0.001:20;
y1=1./(1+(1i.*x + 1./(1i.*x)));
absolute_y1= abs(y1);
figure()
hold on
plot(x,absolute_y1, 'blue')
title('\color{red} Phase and Amplitude versus angular frequency')
xlabel('\color{blue}Angular Frequency')
y_angle=angle(y1);
plot(x,y_angle, 'red')
legend('Blue corresponds to Abs','Red corresponds to Phase')
hold off
figure()

%% %q1 part c
y20=1./(1+20.*(1i.*x + 1./(1i.*x)));%output transform function when Resistance is 20 ohm
absolute_y20=abs(y20);%abslolute magnitude of transform function when Resistance is 20 ohm
angle_y20=angle(y20);%phase angle of transform function when Resistance is 20 ohm
hold on
plot(x,absolute_y20,'blue')
title('\color{red} Phase and Amplitude versus angular frequency');
plot(x,angle_y20,'red')
xlabel('\color{blue}angular frequency');
legend('Blue corresponds to Abs','Red corresponds to Phase')
hold off
figure()

y5=1./(1+5.*(1i.*x + 1./(1i.*x)));%output transform function when Resistance is 5 ohm
absolute_y5=abs(y5);%abslolute magnitude of transform function when Resistance is 5 ohm
angle_y5=angle(y5);%phase angle of transform function when Resistance is 5 ohm
hold on
plot(x,absolute_y5,'blue')
title('\color{red} Phase and Amplitude versus angular frequency');
plot(x,angle_y5,'red')
xlabel('\color{blue}angular frequency');
legend('Blue corresponds to Abs','Red corresponds to Phase')
hold off
% analysis is included in the report pdf and word files
figure()


%% %q1 part d

y1=tf([1,0],[1,1,1]);
pzmap(y1)
figure()
%% %q1 part e

impulse(y1)
figure()

%% %q1 part f

step(y1)
%% %q1 part g

syms s;

y11=1/(1+1*(s+1/s));
y2020=1/(1+20*(s+1/s));


%output when w=1.1

fprintf('output when w=1.1 & R=1')
H11=y11*((1.1))/((1.1)^2 + s^2);
ilaplace(H11)

fprintf(' output when w=1.1 & R=20')
H12=y2020*((1.1))/((1.1)^2 + s^2);
ilaplace(H12)
%%
fprintf('\noutput when w=1 & R=1')
H21=y11*((1))/((1)^2 + s^2);
ilaplace(H21)


fprintf(' output when w=1 & R=20')
H22=y2020*((1))/((1)^2 + s^2);
ilaplace(H22)

%%
fprintf('\n output when w=0.9 & R=1')
H31=y11*((0.9))/((0.9)^2 + s^2);
ilaplace(H31)

fprintf('output when w=0.9 & R=20')
H32=y2020*((0.9))/((0.9)^2 + s^2);
ilaplace(H32)
%%