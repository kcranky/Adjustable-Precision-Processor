% Create a signal with two sinusoids. Decimate it by a factor of 13 using an FIR filter of order 82. 
r = 13;
n = 16:365;
lx = length(n);
x = sin(2*pi*n/153) + cos(2*pi*n/127);

plot(0:lx-1,x,'o')
hold on
y = decimate(x,r,82,'fir');
stem(0:r:lx-1,y,'ro','filled','markersize',4)

legend('Original','Decimated','Location','south')
xlabel('Sample number')
ylabel('Signal')