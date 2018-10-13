#include <iostream>

#include "dji_linux_helpers.hpp"
#import "uav_error_code/UAVErrorCode.h"
#import "SingleInstanceGetter.h"

#import "dji_gimbal.hpp"

using namespace DJI::OSDK;
using namespace DJI::OSDK::Telemetry;

int main(int argc, char ** argv) {
    // init timeout
    int functionTimeOut = 1;
    // init helper instance
    initSingleInstanceGetter(argc,argv);
    SingleInstanceGetter * getter = getSingleInstance();
    // get Vehicle object
    Vehicle * vehicle = getter->getVehicle();
    // obtain control authority
    vehicle->obtainCtrlAuthority(functionTimeOut);
    //



    return 0;
}