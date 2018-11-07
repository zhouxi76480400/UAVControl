//
// Created by zhouxi on 18-11-7.
//

#ifndef UAVCONTROL_UDPSERVER_H
#define UAVCONTROL_UDPSERVER_H


class UDPServer {

private:
    int port;

public:
    UDPServer();
    UDPServer(int port);
    void startServer();


};


#endif //UAVCONTROL_UDPSERVER_H
