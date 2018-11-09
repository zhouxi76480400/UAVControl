//
// Created by zhouxi on 18-11-7.
//

#include "UDPServer.h"
#include <exception>
#include <iostream>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <cstring>
#include "../task_queue/Task.h"
#include "../task_queue/TaskQueue.h"


#define IN_BUFFER_LEN 1024

UDPServer::UDPServer() {
    throw std::exception();
}

UDPServer::UDPServer(int port) {
    UDPServer::port = port;
}

void UDPServer::startServer() {
    int server_fd = socket(AF_INET, SOCK_DGRAM, 0);
    if(server_fd < 0) {
        std::cout << "can not allocate fd" << std::endl;
        throw std::exception();
    }
    struct sockaddr_in ser_addr;
    memset(&ser_addr,0, sizeof(ser_addr));
    ser_addr.sin_family = AF_INET;
    ser_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    ser_addr.sin_port = htons(port);
    int ret = bind(server_fd,(struct sockaddr*)&ser_addr,sizeof(ser_addr));
    if(ret < 0) {
        std::cout << "can not bind this port :" << port << std::endl;
        throw std::exception();
    }
    struct sockaddr_in src;
    socklen_t len;

    while (true){
        len = sizeof(ser_addr);
        char buff[IN_BUFFER_LEN];
        memset(buff,0,IN_BUFFER_LEN);
        ssize_t read_size = recvfrom(server_fd,buff,IN_BUFFER_LEN,0,(struct sockaddr*)&src, &len);
        createNewTask(buff,read_size);
        std::cout << "udp server get data:"<< std::endl << buff << std::endl;
//        std::cout << is_read_thread_used << std::endl;
//        std::cout << is_write_thread_used << std::endl;
//        TaskQueue::addTask(Task());
    }
}
