%% -------------------------------------------------------------- %%
%                     Wake seed Yuri's theory                             %
%% -------------------------------------------------------------- %%
clear;
format long
res = 1e-5;
ran = 10;
global e_charge h_Plank c_speed
e_charge = 1.602176565e-19;     % charge unit[C]
h_Plank  = 6.62607004e-34;      % Plank constant [J-sec]
c_speed  = 299792458;           % speed of light[m/sec]

input_crystal_parameters;
crystal_struc.cry_thickness = cry_thickness;        % crystal thickness [m]
crystal_struc.cry_bragg = cry_bragg;                % bragg angle [deg]
crystal_struc.cry_asymmetry = cry_asymmetry;        % asymmetric angle[deg]
crystal_struc.pho_energy = pho_energy;              % photon energy [eV]
crystal_struc.ele_suscept0 = ele_suscept0;          % electric susceptibility
crystal_struc.ele_susceptH = ele_susceptH;          % electric susceptibility
crystal_struc.ele_susceptHbar = ele_susceptHbar;          % electric susceptibility



pho_energy = crystal_struc.pho_energy;
wavelength = h_Plank*c_speed/pho_energy/e_charge;                    % wavelength
w0 = 2*pi*c_speed/wavelength;
cf=w0/2/pi*(1);
f=cf*(1-ran*res):10*res*cf/10000:cf*(1+ran*res);
Omega = f;
[R001,R00,R0H,y] = Transmission(crystal_struc,Omega);
subplot(1,2,1)
plot(f,abs(R00).^2)
subplot(1,2,2)
plot(f,abs(R0H).^2)

%%case 1
npt=100000;
pd1=makedist('exp',1e-4);
pd2=makedist('unif',-pi,pi);
iamp = sqrt(random(pd1,npt+1,1));
iphs = exp(1i*random(pd2,npt+1,1));
ibun = iamp.*iphs;
nres= 1e-3;
f=cf*(1-nres):2*nres*cf/npt:cf*(1+nres);
figure(2)
hist(abs(ibun).^2,100)
%gain 
rho = 1e-4;
nf= (f-cf)/2/rho/cf;
u3= -1/2-1i*sqrt(3)/2;
z1=9;
gain1 = exp(1i*z1*(u3-nf/3+(nf.^2)/9/u3));
rad1=ibun.*gain1';
figure(2)
plot(abs(rad1).^2)
[R001,R00,R0H,y] = Transmission(crystal_struc,f);
trans = rad1.*R001';
P0=abs(R00).^2;
line = min(P0)*1e3;
[~,minR0] = min(P0);
[m1,n1]=min(abs(P0(1:minR0)-line));
[m2,n2]=min(abs(P0(minR0:end)-line));
n2=n2+minR0;
figure(11)
plot(f,P0)
hold on
plot(f([n1,n2]),P0([n1,n2]),'x')
figure(12)
PT=abs(trans).^2;
plot(PT(n1:n2));
mean(PT(n1+100:n1+250))
trans([1:n1,n2:end])=0;
sec=ibun+trans;
plot(abs(sec).^2)
z2=18-z1;
gain2 = exp(1i*z2*(u3-nf/3+(nf.^2)/9/u3));
rad2=sec.*gain2';

%% case 2



npt=100000;
pd1=makedist('exp',1e-4);
pd2=makedist('unif',-pi,pi);
iamp = sqrt(random(pd1,npt+1,1));
iphs = exp(1i*random(pd2,npt+1,1));
ibun = iamp.*iphs;
nres= 1e-3;
f=cf*(1-nres):2*nres*cf/npt:cf*(1+nres);
figure(2)
hist(abs(ibun).^2,100)
%gain 
rho = 1e-4;
nf= (f-cf)/2/rho/cf;
u3= -1/2-1i*sqrt(3)/2;
z1=9;
gain1 = exp(1i*z1*(u3-nf/3+(nf.^2)/9/u3));
rad1=ibun.*gain1';
figure(2)
plot(abs(rad1).^2)
[R001,R00,R0H,y] = Transmission(crystal_struc,f);
reflect = rad1.*R0H';
plot(abs(R0H).^2);
plot(abs(reflect).^2);
nref=reflect+ibun;
z2=6;
gain2 = exp(1i*z2*(u3-nf/3+(nf.^2)/9/u3));
rad2 = nref.*gain2';
ref2 = rad2.*R0H';
plot(abs(ref2).^2)



T=ibun.*R00';
R=ibun.*R0H';
res = abs(ibun).^2-abs(T).^2-abs(R).^2;
plot(res)





