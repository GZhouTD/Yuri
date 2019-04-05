//
// Created by GQZhou on 4/4/2019.
//

#ifndef YURI_READIN_H
#define YURI_READIN_H
#include <string>
#include <fstream>
#include <iostream>
#include <vector>
#include "scicont.h"
using namespace std;
typedef struct {
    double thickness;
    double bragg;
    double asymmetry;
    double photon_en;
    double xr0;
    double xi0;
    double xrh;
    double xih;
    complex<double> ele_sus0;
    complex<double> ele_susH;
    complex<double> ele_susHbar;
}Crystal;

class Readin {
public:
    Readin();
    virtual ~Readin();
    Crystal reader(string);
    vector<double> freqread(string);
};

#endif //YURI_READIN_H
