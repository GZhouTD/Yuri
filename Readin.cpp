//
// Created by GQZhou on 4/4/2019.
//
#include "Readin.h"
#include <unistd.h>
#include <math.h>
#include <iomanip>


Readin::Readin() = default;

Readin::~Readin() = default;

Crystal Readin::reader(const string fname) {
    Crystal crystal;
    string buffer;
    string num;
    string key;
    int n;
    const double pi = M_PI;
    ifstream f2r(fname);
    double tmp;
    cout << "Current working path:  " << getcwd(NULL, 0) << endl;
    if (!f2r) {
        cout << "Unable to open the crystal file";
        exit(1); // terminate with error
    }
    while (getline(f2r, buffer)) {
        if ((!buffer.compare(0, 1, "#") || buffer.length() < 1)) { continue; }
        //cout << buffer << endl;
        if (buffer.compare("=") != 0) {
            n = buffer.find("=");
            cout<<n<<endl;
            key = buffer.substr(0, n - 1);
            num = buffer.substr(n + 1);
            tmp = atof(num.c_str());
           // cout<<key<<endl;
            // cout<<!key.find("cry_thickness")<<endl;
            if (!key.find("cry_thickness")) { crystal.thickness = tmp; }
            if (!key.find("cry_bragg")) { crystal.bragg = tmp; }
            if (!key.find("cry_asymmetry")) { crystal.asymmetry = tmp; }
            if (!key.find("pho_energy")) { crystal.photon_en = tmp; }
            if (!key.find("xr0")) { crystal.xr0 = tmp; }
            if (!key.find("xi0")) { crystal.xi0 = tmp; }
            if (!key.find("xrh")) { crystal.xrh = tmp; }
            if (!key.find("xih")) { crystal.xih = tmp; }
        }
    }
     /*cout<<crystal.thickness<<endl;
     cout<<crystal.bragg<<endl;
     cout<<crystal.asymmetry<<endl;
     cout<<crystal.photon_en<<endl;
     cout<<crystal.xr0<<endl;
     cout<<crystal.xi0<<endl;
     cout<<crystal.xrh<<endl;
     cout<<crystal.xih<<endl;
     */
    crystal.ele_sus0 = crystal.xr0+I*crystal.xi0;
    crystal.ele_susH = crystal.xrh+ I*crystal.xih;
    crystal.ele_susHbar = (pow(crystal.xrh, 2) - pow(crystal.xih, 2)+I*2.0 * abs(crystal.xrh * crystal.xih) * cos(pi))/crystal.ele_susH;

    f2r.close();
    return crystal;
}

vector<double> Readin::freqread(const string fname) {
    fstream f2r(fname);
    string buffer;
    vector<double> freq;
    double tmp;
    if (!f2r) {
        cout << "Unable to open the frequency file";
        exit(1); // terminate with error
    }
    while (getline(f2r, buffer)) {
        tmp = atof(buffer.c_str());
        freq.push_back(tmp);
    }
    return freq;
}
