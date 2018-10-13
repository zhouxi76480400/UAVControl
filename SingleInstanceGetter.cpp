//
// Created by zhouxi on 18-9-30.
//

#include "SingleInstanceGetter.h"
#import <iostream>
#import <exception>

static int argc;

static char ** argv;

static SingleInstanceGetter * getter;

/**
 * we should init with two parameters first
 * @param new_argc
 * @param new_argv
 */
void initSingleInstanceGetter(int new_argc, char ** new_argv){
    argc = new_argc;
    argv = new_argv;
}

SingleInstanceGetter * getSingleInstance () {
    if(getter == NULL) {
        if(argv == NULL){
            std::cout << "did you not to call initSingleInstanceGetter ?" << std::endl;
            throw std::exception();
        }
        getter = new SingleInstanceGetter();
    }
    return getter;
}

SingleInstanceGetter::SingleInstanceGetter() {
    std::cout << "SingleInstanceGetter::SingleInstanceGetter" << std::endl;
    if(this->vehicleObject == NULL) {
        LinuxSetup linuxEnvironment(argc, argv);
        Vehicle * vehicle = linuxEnvironment.getVehicle();
        if(vehicle == NULL) {
            std::cout << "device_not_found" << std::endl;
        }
    }
}

SingleInstanceGetter::~SingleInstanceGetter() {
    std::cout << "SingleInstanceGetter::~SingleInstanceGetter" << std::endl;
}

Vehicle* SingleInstanceGetter::getVehicle() {
    return this->vehicleObject;
}
