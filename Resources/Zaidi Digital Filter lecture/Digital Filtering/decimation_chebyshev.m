% Decimate a Signal Using the Chebyshev Filter
% Create a signal with two sinusoids. Decimate it by a factor of 13 using a Chebyshev IIR filter of order 5.

r = 13;
n = 16:365;
lx = length(n);
x = sin(2*pi*n/153) + cos(2*pi*n/127);

plot(0:lx-1,x,'o')
hold on
y = decimate(x,r,5);
stem(lx-1:-r:0,fliplr(y),'ro','filled','markersize',4)

legend('Original','Decimated','Location','south')
xlabel('Sample number')
ylabel('Signal')