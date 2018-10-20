clear all
close all

n=8; Rp=0.5; Rs=50; Wp=0.15
[b,a] = ellip(n,Rp,Rs,Wp);
% unquantized
% x=pole o=zero
flag_unquantized = isstable(b,a)
figure
zplane(b,a)
title('Unquantized')

% Q1.23 -- 24 bit
b_Q_1_23 = fi(b, 1, 24, 23)
a_Q_1_23 = fi(a, 1, 24, 23)
figure
zplane(b_Q_1_23.data, a_Q_1_23.data)
title('Q1.23')

% Q7.17 -- 24 bit
b_Q_7_17 = fi(b, 1, 24, 17)
a_Q_7_17 = fi(a, 1, 24, 17)
figure
zplane(b_Q_7_17.data, a_Q_7_17.data)
title('Q7.17')

% Q1.15 -- 16 bit
b_Q_1_16 = fi(b, 1, 16, 15)
a_Q_1_16 = fi(a, 1, 16, 15)
figure
zplane(b_Q_1_16.data, a_Q_1_16.data)
title('Q1.15')

% Q7.9 -- 16 bit
b_Q_7_9 = fi(b, 1, 16, 9)
a_Q_7_9 = fi(a, 1, 16, 9)
figure
zplane(b_Q_7_9.data, a_Q_7_9.data)
title('Q7.9')

% Q1.11 -- 12 bit
b_Q_1_11 = fi(b, 1, 12, 11)
a_Q_1_11 = fi(a, 1, 12, 11)
figure
zplane(b_Q_1_11.data, a_Q_1_11.data)
title('Q1.11')

% Q6.6 -- 12 bit
b_Q_6_6 = fi(b, 1, 12, 6)
a_Q_6_6 = fi(a, 1, 12, 6)
figure
zplane(b_Q_6_6.data, a_Q_6_6.data)
title('Q6.6')
