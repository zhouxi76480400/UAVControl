//
// Created by zhouxi on 18-9-30.
//

#ifndef UAVCONTROL_SINGLEINSTANCEGETTER_H
#define UAVCONTROL_SINGLEINSTANCEGETTER_H

#import "dji_linux_helpers.hpp"

class SingleInstanceGetter {

private:
    Vehicle * vehicleObject;

public:
    SingleInstanceGetter();
    ~SingleInstanceGetter();
    Vehicle * getVehicle();
};

void initSingleInstanceGetter(int argc, char ** argv);

SingleInstanceGetter * getSingleInstance ();

#endif //UAVCONTROL_SINGLEINSTANCEGETTER_H
