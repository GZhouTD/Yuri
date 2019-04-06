//
// Created by GQZhou on 4/5/2019.
//

#ifndef YURI_WRITEOUT_H
#define YURI_WRITEOUT_H

#include <fstream>
#include <iostream>
#include "sdomain.h"
using namespace std;

class Writeout {
public:
    Writeout();
    virtual ~Writeout();
    bool writer(RT, string);
};


#endif //YURI_WRITEOUT_H
