#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include "Readin.h"
#include <math.h>
using namespace std;

int main() {
    const double e_charge = 1.602176565e-19;
    const double h_Plank = 6.62607004e-34;
    const double c_speed = 299792458;
    const double pi = M_PI;
    Crystal crystal;
    Readin *readin = new Readin;
    crystal = readin->reader("../crystal.dat");

    double wavelength = h_Plank*c_speed/ crystal.photon_en/e_charge;
    double w0 = 2 * pi * c_speed / wavelength;
    double cf = w0 / 2 / pi ;


    return 0;
}