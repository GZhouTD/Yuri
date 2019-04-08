//
// Created by GQZhou on 4/5/2019.
//

#ifndef YURI_SDOMAIN_H
#define YURI_SDOMAIN_H
#include "Readin.h"
#include "scicont.h"
#include "math.h"
typedef struct{
    vector<complex<double> > R00;
    vector<complex<double> > R0H;
    vector<complex<double> > R01;
}RT;

class Sdomain {
public:
    Sdomain();
    virtual ~Sdomain();
    RT interaction(Crystal,vector<double>);
};


#endif //YURI_SDOMAIN_H
