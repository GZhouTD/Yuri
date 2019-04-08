#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include "Readin.h"
#include <math.h>
#include "scicont.h"
#include "Sdomain.h"
#include "Writeout.h"

using namespace std;

int main() {
    vector<double> freq;
    Crystal crystal;
    bool jgment;
    RT rt;
    Sdomain *sdomain = new Sdomain;
    Readin *readin = new Readin;
    Writeout *writeout = new Writeout;
    crystal = readin->reader("crystal.dat");

    double wavelength = h_Plank * c_speed / crystal.photon_en / e_charge;
    double w0 = 2 * pi * c_speed / wavelength;
    double cf = w0 / 2 / pi;
    freq = readin->freqread("freq.txt");
 //   cout<<crystal.xr0<<crystal.xi0<<endl;
  /* debug only
    for (auto it = freq.begin(); it != freq.end(); it++) {
        cout << *it << endl;
    }
    */
    rt = sdomain->interaction(crystal,freq);
    jgment = writeout->writer(rt,"out.dat");
 //   cout<<rt.R00[10]<<endl;
    return 0;
}
