//
// Created by zhouxi on 18-11-7.
//

#ifndef UAVCONTROL_TASKQUEUE_H
#define UAVCONTROL_TASKQUEUE_H


# include <atomic>

#include <vector>
#include "Task.h"

class TaskQueue {

public:
    // task list
    static std::vector<Task *> vector();

    // locks
    static std::atomic<bool> is_write_thread_used;

    static std::atomic<bool> is_read_thread_used;

};



#endif //UAVCONTROL_TASKQUEUE_H
