//
// Created by GQZhou on 4/5/2019.
//

#include "Sdomain.h"

Sdomain::Sdomain() = default;

Sdomain::~Sdomain() = default;

RT Sdomain::interaction(Crystal crystal, vector<double> freq) {
    RT rt;
    string buffer;
    string num;
    string key;
    double Omega;
    complex<double> y;
    complex<double> Y1;
    complex<double> Y2;
    complex<double> R1;
    complex<double> R2;
    double gamma0 = cos(pi/180*(crystal.bragg+crystal.asymmetry-90));
    double gammaH = cos(pi/180*(crystal.bragg+crystal.asymmetry+90));
    double asy_fac = gamma0/gammaH;
    double wavelength = h_Plank * c_speed / crystal.photon_en / e_charge;
    double ang_freq = 2*pi*c_speed/wavelength;
    double wave_num = ang_freq/c_speed;
    complex<double> extin_len = sqrt(gamma0*abs(gammaH))/(wave_num*sqrt(crystal.ele_susH*crystal.ele_susHbar));
    complex<double> A = crystal.thickness/extin_len;
    complex<double> C = exp(I*crystal.ele_sus0*wave_num*crystal.thickness/(2*gamma0));
    complex<double> G = sqrt(abs(asy_fac)*(crystal.ele_susH*crystal.ele_susHbar))/crystal.ele_susHbar;
    for (auto it = freq.begin(); it != freq.end(); it++) {
        Omega = *it*2*pi*-ang_freq;
        y = wave_num*extin_len/(2*gamma0)*(asy_fac*(pow(-4*Omega*(sin((crystal.bragg)*pi/180)),2)/ang_freq)*
                (1-2*Omega/ang_freq+crystal.ele_sus0*(1-asy_fac));
    }

}
