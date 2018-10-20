% https://au.mathworks.com/help/dsp/examples/implementing-the-filter-chain-of-a-digital-down-converter-in-hdl.html

% Digital Down-Converter (DDC) designed to meet the Global System for Mobile (GSM) specification
% from approximately 70 MHz to reduce the rate down to 270 KHz
%
% The model resembles Graychip's GC4016 Multi-Standard Quad DDC Chip which
% includes a five-stage CIC filter with programmable decimation factor (8-4096); 
% a 21-tap FIR filter which decimates by 2 and has programmable 16-bit coefficients; and 
% a 63-tap FIR filter which also decimates by 2 and has programmable 16-bit coefficients.

clear all
close all

R    = 64; % Decimation factor
D    = 1;  % Differential delay
Nsecs = 5;  % Number of sections

OWL = 20; % Output word length

cic = dsp.CICDecimator('DecimationFactor',R,'NumSections',Nsecs,...
    'FixedPointDataType','Minimum section word lengths',...
    'OutputWordLength',OWL);

info(cic)
Fs_in = 69.333e6;
fvt = fvtool(cic,'Fs',Fs_in);
fvt.Color = 'White';

% The first thing to note is that the CIC filter has a huge passband gain, which is due to the additions and feedback within the structure. 
% We can normalize the CIC's magnitude response by using the corresponding setting in FVTool. Normalizing the CIC filter response to have 
% 0 dB gain at DC will make it easier to analyze the overlaid filter response of the next stage filter.

fvt.NormalizeMagnitudeto1 = 'on';

% The other thing to note is that zooming in the passband region we see that the CIC has about -0.4 dB of attenuation (droop) at 80 KHz, 
% which is within the bandwidth of interest. A CIC filter is essentially a cascade of boxcar filters and therefore has a sinc-like response 
% which causes the droop. This droop needs to be compensated by the FIR filter in the next stage.

axis([0 .1 -0.8 0]);

% Compensation FIR Decimator
% The second stage of our DDC filter chain needs to compensate for the passband droop caused by the CIC and decimate by 2. 
% Since the CIC has a sinc-like response, we can compensate for the droop with a lowpass filter that has an inverse-sinc response in 
% the passband. This filter will operate at 1/64th the input sample rate which is 69.333 MHz, therefore its rate is 1.0833MHz. 
% Instead of designing a lowpass filter with an inverse-sinc passband response from scratch, we'll use a canned function which lets us design 
% a decimator with a CIC Compensation (inverse-sinc) response directly.

% Filter specifications
Fs     = 1.0833e6; % Sampling frequency 69.333MHz/64
Apass  = 0.01;     % dB
Astop  = 70;       % dB
Fpass  = 80e3;     % Hz passband-edge frequency
Fstop  = 293e3;    % Hz stopband-edge frequency

% Design decimation filter. D and Nsecs have been defined above as the
% differential delay and number of sections, respectively.
compensator = dsp.CICCompensationDecimator('SampleRate',Fs,...
    'CICRateChangeFactor',R,'CICNumSections',Nsecs,...
    'CICDifferentialDelay',D,'PassbandFrequency',Fpass,...
    'StopbandFrequency',Fstop,'PassbandRipple',Apass,...
    'StopbandAttenuation',Astop);

% Now we have to define the fixed-point attributes of our multirate filter.
% By default, the fixed-point attributes of the accumulator and multipliers
% are set to ensure that full precision arithmetic is used, i.e. no
% quantization takes place. By default, 16 bits are used to represent the
% filter coefficients. Since that is what we want in this case, no changes
% from default values are required.

info(compensator)

% Cascading the CIC with the inverse sinc filter we can see if we eliminated the passband droop caused by the CIC.

cicCompCascade = cascade(cic,compensator);
fvt = fvtool(cic,compensator,cicCompCascade,'Fs',[Fs_in,Fs_in/64,Fs_in]);
fvt.Color = 'White';
fvt.NormalizeMagnitudeto1 = 'on';
axis([0 .1 -0.8 0.8]);
legend(fvt,'cic','compensator','cascade');

% Third Stage FIR Decimator
% As indicated earlier the GSM spectral mask requires an attenuation of 18 dB at 100 KHz. So, for our third and final stage we can try a simple equiripple lowpass filter. Once again we need to quantize the coefficients to 16 bits (default). This filter also needs to decimate by 2.

N = 62;       % 63 taps
Fs = 541666;  % 541.666 kHz
Fpass = 80e3;
Fstop = 100e3;

spec = fdesign.decimator(2,'lowpass','N,Fp,Fst',N,Fpass,Fstop,Fs);
% Give more weight to passband
decimator = design(spec,'equiripple','Wpass',2,'SystemObject',true);

% When defining a multirate filter by default the accumulator word size is determined automatically to maintain full precision. However, because we only have 20 bits for the output let's set the output format to a word length of 20 bits and a fraction length of -12. First, we must change the FullPrecisionOverride property's default value from true to false.

decimator.FullPrecisionOverride = false;
decimator.OutputDataType = 'custom';
decimator.RoundingMethod = 'nearest';
decimator.OverflowAction = 'Saturate';
decimator.CustomOutputDataType = numerictype([],20,-12);

info(decimator)

% Multistage Multirate DDC Filter Chain
% Now that we have designed and quantized the three filters, we can get the overall filter response by cascading the normalized CIC and the two FIR filters. Again, we're using normalized magnitude to ensure that the cascaded filter response is normalized to 0 dB.

ddc = cascade(cic,compensator,decimator);
fvt = fvtool(ddc,'Fs',Fs_in);
fvt.Color = 'White';
fvt.NormalizeMagnitudeto1 = 'on';
fvt.NumberofPoints = 8192*3;
axis([0 1 -200 10]);  % Zoom-in

% To see if the overall filter response meets the GSM specifications, we can overlay the GSM spectral mask on the filter response.
drawgsmmask;

% We can see that our overall filter response is within the constraints of the GSM spectral mask. We also need to ensure that the passband ripple meets the requirement that it is less than 0.1 dB peak-to-peak. We can verify this by zooming in using the axis command.
axis([0 .09 -0.08 0.08]);

% Indeed the passband ripple is well below the 0.1 dB peak-to-peak GSM requirement.