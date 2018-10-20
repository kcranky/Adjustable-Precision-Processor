clear all;
close all;
clc;

add = [13.00 6.00; 10 5; 13 3; 21 5; 0 5; 43 76; ]
div = [28 7; 17 8; 16 7; 20 5; 0 0; 19 73];
mul = [18 17 3; 14 21 3; 15 24 2; 28 28 5; 15 0 2; 10 10 85];

totalDynamic = 100 - [92 70 100; 94 69 93; 91 70 100];

LUT = [236 134 0 ; 170 99 275; 278 270 0];
FF= [198 345 0; 177 208 199; 247 478 0];
DSP = [ 0 2 0; 1 1 0; 0 0 0];

 %y = LUT + FF + DSP;
y =totalDynamic;
b = bar(y, 'FaceColor', 'flat');
set (gca, 'XTickLabel', {'Addition', 'Multiplication', 'Division'});
xt = get(gca, 'XTick');
set(gca, 'FontSize', 12)
grid on

for k = 1:size(y,2)
    b(k).CData = k;
end


ytick = sort(unique(y(:)'))
%ytick = [0    99   134   170   236   270 278]
%FF ytick = [0   177   198    208   247   345   478];
% ALL RESOURCES ytick = [0   308   348   434   481   525   748];
% Add ytick = [0     3     5      10    13    21    43    76]
% div ytick = [0     5         8    16      20    28    73]
% mul ytick = [0     3     5    10    15    18    21    24    28    85]
yticks(ytick);
xl = xlabel('Operation') ;
yl =ylabel('Percentage of Total Power that is Dynamic') ;
xl.FontSize = 14;
yl.FontSize = 14;
lgd = legend({'Parameterized Implementation', 'Xilinx IP Core', 'Parameterized Implementation (No DSP)'},'Location','northwest');
lgd.FontSize = 14;