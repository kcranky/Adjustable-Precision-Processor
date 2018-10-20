% Decimatiom

% Create a sinusoidal signal sampled at 4 kHz. Decimate it by a factor of four.

t = 0:.00025:1;
x = sin(2*pi*30*t) + sin(2*pi*60*t);
y = decimate(x,4);

subplot 211
stem(0:120,x(1:121),'filled','markersize',3)
grid on
xlabel 'Sample number',ylabel 'Original'
subplot 212
stem(0:30,y(1:31),'filled','markersize',3)
grid on
xlabel 'Sample number',ylabel 'Decimated'