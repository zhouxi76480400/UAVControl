//
// Created by zhouxi on 18-11-7.
//

#ifndef UAVCONTROL_TASKQUEUE_H
#define UAVCONTROL_TASKQUEUE_H

#include <vector>
#include "Task.h"

using namespace std;


// task list
static vector<Task *> task_vector = vector<Task *>();


// locks
static bool is_write_thread_used = false;

static bool is_read_thread_used = false;

class TaskQueue {
public:
    static void addTask(Task newTask);
};

// methods
//static void addTask(Task newTask);

static void deleteTask(Task existsTask);


#endif //UAVCONTROL_TASKQUEUE_H
