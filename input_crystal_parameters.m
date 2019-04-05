cry_thickness = 0.05e-3;                            % crystal thickness [m]
cry_bragg     = 45.01;                           % bragg angle [deg]
cry_asymmetry = 0;                                % asymmetric angle[deg]
pho_energy    = 9830;                             % photon energy [eV]
ele_suscept0  = -0.15124E-04+1i* 0.13222E-07 ;       % electric susceptibility

xrh= 0.37824E-05  ;   
xih =  0.12060E-07;
ele_susceptH =xrh+1i*xih;
ele_susceptHbar  = (xrh^2-xih^2+2*1i*abs(xrh*xih)*cos(pi))/ele_susceptH;       % electric susceptibility
%ele_susceptH =xrh-1i*xih;