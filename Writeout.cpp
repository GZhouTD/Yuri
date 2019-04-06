//
// Created by GQZhou on 4/5/2019.
//

#include "Writeout.h"
#include <iomanip>
#include <math.h>
Writeout::Writeout() = default;
Writeout::~Writeout() = default;
bool Writeout::writer(RT rt ,const string fname) {
    ofstream f2w(fname);
    if (!f2w) {
        cout << "Unable to write to disk";
        return false;
        exit(1); // terminate with error
    }
    for (int it = 0; it < rt.R00.size(); it++) {
        f2w<<fixed<<setprecision(9)<<
        pow(abs(*(rt.R00.begin()+it)),2)<<"    "<<
        pow(abs(*(rt.R0H.begin()+it)),2)<<"    "<<
        pow(abs(*(rt.R01.begin()+it)),2)<<"    "<<
        real(*(rt.R00.begin()+it))<<"    "<<imag(*(rt.R00.begin()+it))<<"    "<<
        real(*(rt.R0H.begin()+it))<<"    "<<imag(*(rt.R0H.begin()+it))<<"    "<<
        real(*(rt.R01.begin()+it))<<"    "<<imag(*(rt.R01.begin()+it))<<endl;
    }
    f2w.close();
    return true;
}
