N = 100;
  Fp = 0.38;
  Fst = 0.42;
  Ap = 0.06;
  Ast = 60;
  Hf = fdesign.lowpass('Fp,Fst,Ap,Ast',Fp,Fst,Ap,Ast);
  Hd1 = design(Hf,'equiripple','systemobject',true);
  Hd2 = design(Hf,'equiripple','minphase',true,...
              'systemobject',true);
  hfvt = fvtool(Hd1,Hd2,'Color','White');
  legend(hfvt,'Linear-phase equiripple design',...
         'Minimum-phase equiripple design')
  setspecs(Hf,'N,Fp,Fst',N,Fp,Fst);
  Hd3 = design(Hf,'equiripple','StopbandShape','linear',...
      'StopbandDecay',53.333,'systemobject',true);
  setspecs(Hf,'Fp,Fst,Ap,Ast',Fp,Fst,Ap,Ast);
  Hd4 = design(Hf,'equiripple','StopbandShape','linear',...
      'StopbandDecay',53.333,'minphase',true,'systemobject',true);
  hfvt2 = fvtool(Hd3,Hd4,'Color','White');
  legend(hfvt2,'Linear-phase equiripple design with linearly decaying stopband',...
      'Minimum-phase equiripple design with linearly decaying stopband')