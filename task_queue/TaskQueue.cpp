//
// Created by zhouxi on 18-11-7.
//

#include "TaskQueue.h"
#include <iostream>


void TaskQueue::addTask(Task newTask) {
    task_vector.insert(task_vector.end(),&newTask);
}
// methods
static void addTask(Task newTask) {
    cout << task_vector.size() << endl;
}

static void deleteTask(Task existsTask){

}