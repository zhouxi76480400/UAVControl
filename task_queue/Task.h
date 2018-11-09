//
// Created by zhouxi on 18-11-7.
//

#ifndef UAVCONTROL_TASK_H
#define UAVCONTROL_TASK_H

#include <iostream>

class Task {
public:
    int id;
};

/**
 * buffer to task
 * @param buffer
 * @param buffer_size
 * @return
 */
Task * createNewTask(void * buffer,ssize_t buffer_size);


#endif //UAVCONTROL_TASK_H
