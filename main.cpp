#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include "Readin.h"
#include <math.h>
#include "scicont.h"
#include "Sdomain.h"

using namespace std;

int main() {
    vector<double> freq;
    Crystal crystal;
    Readin *readin = new Readin;
    crystal = readin->reader("/Users/gzhou/CLionProjects/Yuri/crystal.dat");

    double wavelength = h_Plank * c_speed / crystal.photon_en / e_charge;
    double w0 = 2 * pi * c_speed / wavelength;
    double cf = w0 / 2 / pi;
    freq = readin->freqread("/Users/gzhou/CLionProjects/Yuri/freq.txt");

  /*  for (auto it = freq.begin(); it != freq.end(); it++) {
        cout << *it << endl;
    }
    */
    return 0;
}