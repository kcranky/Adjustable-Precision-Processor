% Create input signal and filter
x=1:21;
h=[1 2 3 4 5 6 7 8 9 10 0 0];
% %%%%%% Direct Form (Inefficient) %%%%%%
y=filter(h,1,x); % Compute filter output
y_dec=y(1:4:end) % Throw away unneeded output samples
% %%%%%% Polyphase Form (Efficient) %%%%%%
% Select polyphase filters
p0=h(1:4:end)
p1=h(2:4:end)
p2=h(3:4:end)
p3=h(4:4:end)
% Select polyphase signals
x0=x(1:4:end)
x1=[0 x(4:4:end)]
x2=[0 x(3:4:end)]
x3=[0 x(2:4:end)]
% filter each polyphase component and add together
y_poly_dec=filter(p0,1,x0)+filter(p1,1,x1)+filter(p2,1,x2)+filter(p3,1,x3)