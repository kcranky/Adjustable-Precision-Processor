% A different approach to minimizing the number of coefficients that does not involve minimum-phase designs is to use multistage techniques. Here we show an interpolated FIR (IFIR) approach

  Hd5 = ifir(Hf);
  hfvt3 = fvtool(Hd1,Hd5,'Color','White');
  legend(hfvt3,'Linear-phase equirriple design',...
        'Linear-phase IFIR design')