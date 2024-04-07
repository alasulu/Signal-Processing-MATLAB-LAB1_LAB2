clear
clc
%--- LAB 1 ---%

% Value Components
freq = 4000; %Frequency Value of Sinusodials
T = 1 / freq; %Period Value of Sinusodials
cycles = 2; %How many cycles I want in one T
min_fs = 25; %Minimum Sample Rate Required
two_cycles_time = cycles * T; 
ideal_fs = ceil(two_cycles_time * freq * min_fs); %Ideal Sample Rate Value
tt = linspace(-T, T, ideal_fs); %Time Vector
A1 = 21; % Amplitude of First Sinusoid
A2 = 21 * 1.2; % Amplitude of Second Sinusoid
D = 13;
M = 7;
tm1 = (37.2 / M) * T; % First Shifting Component Vallue
tm2 = -(41.3 / D) * T; % Second Shifting Component Value

% Sinusoids
X1 = A1 * cos(2 * pi * freq * (tt - tm1));
X2 = A2 * cos(2 * pi * freq * (tt - tm2));
X3 = X2 + X1;

% Plot 
subplot(3, 1, 1)
plot(tt, X1)
xlabel('Time (tt)')
ylabel('Amplitude')
title('Time (tt) vs X1 Sinusoid')
subplot(3, 1, 2)
plot(tt, X2)
xlabel('Time (tt)')
ylabel('Amplitude')
title('Time (tt) vs. X2 Sinusoid')
subplot(3, 1, 3)
plot(tt, X3)
xlabel('Time (tt)')
ylabel('Amplitude')
title('Time (tt) vs. X3 = X1 + X2 Sinusoid')

x1_complex_pres = 21*exp(j*2*freq)*exp(j*(tt-tm1));
disp(x1_complex_pres);
disp("Complex Amplitude Presentation of X1 stated above ↑↑↑")