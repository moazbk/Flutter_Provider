import 'package:flutter/material.dart';
import 'Task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task =taskData.task[index];
            return TaskDo(
              longPressCallback: (){
                taskData.deleteTask(task);
              },
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (newValue) {
                taskData.updateTask(task);
              },

            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
