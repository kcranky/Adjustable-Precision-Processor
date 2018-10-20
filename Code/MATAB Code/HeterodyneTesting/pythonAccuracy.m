clear all;
close all;
clc;
prec = [8 16 20 24 32 40];
precd = [8 16 20 24 32];

% LUT
addLUT = [117 158 179 197 258 274];
mulLUT = [103 94 115 122 146 210];
divLUT = [175 226 252 269 324];

% FF
addFF =[72 102 117 132 163 195];
mulFF = [67 71 77 83 110 165];
divFF=[97 131 146 161 192];

% No DSP
mulnoDSPFF = [67 83 89 95 107 117];
mulnoDSPLUT = [103 130 135 148 183 200];




% 
% clock32add = [23 40 4 21 4 4];
% clock16add = [13 21 4 20 4 4];
% 
% clock32mul = [12 13 4 23 4 4];
% clock16mul = [12 13 4 13 4 4];

p1 = divSynthTime;
% p2 = mulFF;
% p3 = divFF;
% p4 = mulnoDSPFF;
%p5 = mulDSP;

hold on
plot(precd, p1, '-*')
% plot(prec, p2, '-s')
% plot(precd, p3, '-o')
% plot(prec, p4, '-x')
%plot(prec, p5, '-^')
grid on
%label = strcat({'Mean = '}, num2str(mean(times)), "s");
%h = hline(mean(times), 'r', label)

xlim([6 34]);
xticks([6 precd 34])
%ylim([3.2 4.9])
%ytick = [mulFF addFF divFF];
%ytick = [p1 p2 p3];
%ytick = sort(ytick);
%ytick = unique(ytick);

%h = hline(mean(divSynthTime),'r','Mean = 91.8s')

%yticks([ytick])
%ylim([min(ytick)-2 max(ytick)+2])
xl = xlabel('Word Size') ;
yl = ylabel('Time (seconds)');
xl.FontSize = 14;
yl.FontSize = 14;
lgd = legend({'Take Taken to Generate Bitstream', 'Multiplication', 'Division', 'Multiplication (No DSP)'},'Location','northwest');
lgd.FontSize = 14;

