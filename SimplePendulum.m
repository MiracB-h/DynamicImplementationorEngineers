clc
clear all
g=9.81;
L=1;
gain =sqrt( g/L);
dt = 0.025; %.01 .025 .05
T = 3.5;
Nt = floor(T/dt);
theta(1) = pi/4;
w(1) = 0;
t(1)=0;
for i = 1:Nt;
theta(i+1) = theta(i) + dt*w(i);
w(i+1) = w(i) - dt*gain^2*sin(theta(i));
t(i+1)=t(i)+dt;
end
plot(t, theta*180/pi, 'black', t, theta(1)*cos(gain*t)*180/pi, 'r--');
legend('Nonlinear Sol.', 'Exact Sol.', 'Location','northeast');
xlabel('Time (s)');
ylabel('Theta(Degree)');
hold on