% Create a sinusoidal signal sampled at 1 kHz. Interpolate it by a factor of four.

t = 0:0.001:1;
x = sin(2*pi*30*t) + sin(2*pi*60*t);
y = interp(x,4);

subplot 211
stem(0:30,x(1:31),'filled','markersize',3)
grid on
xlabel 'Sample number',ylabel Original
subplot 212
stem(0:120,y(1:121),'filled','markersize',3)
grid on
xlabel 'Sample number',ylabel Interpolated