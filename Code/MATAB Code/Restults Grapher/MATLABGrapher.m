clear; close;
filename = 'S:\Uni\EEE4022S\Report and Planning\ResultsFormatted.xlsx';
sheet = 'Addition';
WS = xlsread(filename,sheet, 'A2:A8')';
LUT = xlsread(filename,sheet,'B2:B8')';
FF = xlsread(filename,sheet,'C2:C8')';
DSP = xlsread(filename,sheet,'D2:D8')';
% 'xlsx' for exell 2007
%v: Double
%T and vT : cell
%use v containing numbers 
%t=v(x`x:,1);
%y=v(:,2)
%if u have to plot second colone depending on first:
%WS = 'A2:
%[WS,LUT,FF,DSP]

%ticks
xticks([0 WS 45])
%xticklabels({'0', '6', '8', '16', '20', '24', '32', '40', '45'})

ytick = [FF LUT DSP];
ytick = unique(ytick);
yticks(ytick)

%xticks('manual');

ymin = min(min(FF), min(LUT))-10;
ymax = max(max(FF), max(LUT))+10;
ylim([ymin ymax]);
xlim([0 45]);

title(strcat({'Resources required for '}, sheet,' at varying word sizes'));

hold on

plot(WS, FF, '-*')
plot(WS, LUT, '-s')
%plot(WS, DSP, '-o')

hold off
%legend({'Look up tables', 'Flip flops', 'DSP'},'Location','northwest')
legend({'Look up tables', 'Flip flops'},'Location','northwest')
xlabel('Word Size') 
ylabel('Number of resources') 
