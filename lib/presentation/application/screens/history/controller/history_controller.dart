import 'package:flutter/material.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/styles_manager.dart';

class HistoryController {
  static final HistoryController _instance = HistoryController._internal();

  HistoryController._internal();

  factory HistoryController() {
    return _instance;
  }

  void showDeleteTaskDialog(
    String itemId,
    BuildContext context,
    Function deleteTask,
  ) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Delete Task'),
          content: const Text(
            'Are you sure you want to delete this task? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: Text(
                'Cancel',
                style: getRegularStyle(color: AppColors.accentColor),
              ),
            ),
            TextButton(
              onPressed: () {
                deleteTask(itemId);
                Navigator.of(dialogContext).pop();
              },
              child: Text(
                'Delete',
                style: getRegularStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }


  void showDeleteAllTasksDialog(
      BuildContext context,
      Function deleteAllTasks,
      ) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Delete Tasks'),
          content: const Text(
            'Are you sure you want to delete all tasks? This action cannot be undone.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: Text(
                'Cancel',
                style: getRegularStyle(color: AppColors.accentColor),
              ),
            ),
            TextButton(
              onPressed: () {
                deleteAllTasks();
                Navigator.of(dialogContext).pop();
              },
              child: Text(
                'Delete',
                style: getRegularStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
