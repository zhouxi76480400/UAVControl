#include <iostream>

#include "dji_linux_helpers.hpp"
#include "uav_error_code/UAVErrorCode.h"
#include "SingleInstanceGetter.h"


#include "flight_control/flight_control.h"

#include "DJI_guidance.h"

#include "process_data_connect/UDPServer.h"
#include <thread>

using namespace DJI::OSDK;
using namespace DJI::OSDK::Telemetry;

void init_servers(int,int);
void init_udp_server(int);
void flight_control(int , char ** );

int main(int argc, char ** argv) {
    // init local udp server
    init_servers(100,10800);


//    flight_control(argc, argv);

    while (true) {
        sleep(1);
    }
    return 0;
}

void init_servers(int tcp_port, int udp_port) {
    std::thread udp_t(init_udp_server,udp_port);
    udp_t.detach();
}

void init_udp_server(int port) {
    UDPServer udpServer = UDPServer(port);
    udpServer.startServer();
}

void flight_control(int argc, char ** argv) {
    // init timeout
    int functionTimeOut = 1;
    // init helper instance
    initSingleInstanceGetter(argc,argv);
    SingleInstanceGetter * getter = getSingleInstance();
    // get Vehicle object
    Vehicle * vehicle = getter->getVehicle();
    // obtain control authority
    vehicle->obtainCtrlAuthority(functionTimeOut);


    // let we start takeoff
    bool is_success_takeoff = monitoredTakeoff(vehicle,functionTimeOut);
    if(is_success_takeoff) {
        // let we start landing
        bool is_landing = monitoredLanding(vehicle,functionTimeOut);
        if(is_landing) {
            std::cout << "landing success" << std::endl;
        }
    }
}

