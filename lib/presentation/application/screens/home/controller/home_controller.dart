import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/constants/enums/status.dart';
import '../../../../../core/theme/font_manager.dart';
import '../../../../../core/theme/styles_manager.dart';
import '../../../../../core/theme/values_manager.dart';
import '../../../../../domain/models/rich_text_item/rich_text_item.dart';
import '../../../../core/components/toast_info.dart';

class HomeController {
  static final HomeController _instance = HomeController._internal();

  HomeController._internal();

  factory HomeController() {
    return _instance;
  }

  void showAddProjectModal(
    BuildContext context,
    Function addProjectCallBack,
  ) {
    final titleController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (modalContext) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Start New Project ",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(16),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Project Title'),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(modalContext).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      final title = titleController.text.trim();

                      if (title.isNotEmpty) {
                        addProjectCallBack(
                          title: title,
                        );
                      }
                    },
                    child: Text(
                      'Add',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void showAddTaskModal(
    String groupId,
    BuildContext context,
    Function addTaskCallBack,
  ) {
    final taskTitleController = TextEditingController();
    final taskSubtitleController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (modalContext) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(modalContext).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(
                TextSpan(
                  text: "Add New Task ",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "($groupId)",
                      style: const TextStyle(
                        fontSize: 18,
                        color: AppColors.accentColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: taskTitleController,
                decoration: const InputDecoration(labelText: 'Task Title'),
              ),
              const SizedBox(height: 10),
              TextField(
                minLines: 3,
                maxLines: 3,
                controller: taskSubtitleController,
                decoration: const InputDecoration(labelText: 'Task Desc'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(modalContext).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      final title = taskTitleController.text.trim();
                      final subtitle = taskSubtitleController.text.trim();

                      if (title.isNotEmpty) {
                        addTaskCallBack(
                            title: title, subtitle: subtitle, groupId: groupId);
                      }
                    },
                    child: Text(
                      'Add',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void showEditTaskModal(
    String groupId,
    AppFlowyGroupItem item,
    BuildContext context,
    Function editTaskCallBack,
  ) {
    final titleController = TextEditingController();
    final subtitleController = TextEditingController();

    if (item is RichTextItem) {
      titleController.text = item.title;
      subtitleController.text = item.desc;
    }

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (modalContext) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(modalContext).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Edit Task',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              const SizedBox(height: 10),
              if (item is RichTextItem)
                TextField(
                  minLines: 3,
                  maxLines: 3,
                  controller: subtitleController,
                  decoration: const InputDecoration(labelText: 'Desc'),
                ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(modalContext).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      final newTitle = titleController.text.trim();
                      final newSubtitle = subtitleController.text.trim();

                      if (newTitle.isNotEmpty) {
                        if (item is RichTextItem) {
                          editTaskCallBack(
                            groupId: groupId,
                            item: item,
                            newTitle: newTitle,
                            newSubtitle: newSubtitle,
                          );
                        }
                        Navigator.of(modalContext).pop();
                      }
                    },
                    child: Text(
                      'Save',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void showCommentsBottomSheet(
    RichTextItem item,
    BuildContext context,
    Function showCommentBottomSheetCallBack,
  ) {
    final commentController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (modalContext) {
        return   Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
            bottom: MediaQuery.of(modalContext).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Comments',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              if (item.comments.isNotEmpty)
                SizedBox(
                  height: 100,
                  child: item.comments.isNotEmpty
                      ? ListView(
                    children: item.comments
                        .map(
                          (comment) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          comment,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundColor: AppColors.secondaryColor
                              .withOpacity(0.4),
                          radius: 13,
                          child: const Center(
                            child: Icon(
                              Icons.comment,
                              size: AppSize.s14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  )
                      : Center(
                    child: Wrap(
                      spacing: 5,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        const Icon(
                          Icons.comment,
                          size: AppSize.s14,
                          color: AppColors.primaryFourElementText,
                        ),
                        Text(
                          "Ops! No comment added.",
                          textAlign: TextAlign.center,
                          style: getRegularStyle(
                            color: AppColors.primaryFourElementText,
                            fontSize: FontSize.s16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const Gap(20),
              TextField(
                controller: commentController,
                decoration: const InputDecoration(labelText: 'Add a comment'),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(modalContext).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      final newComment = commentController.text.trim();
                      if (newComment.isNotEmpty) {
                        showCommentBottomSheetCallBack(
                            item: item, newComment: newComment);
                        Navigator.of(modalContext).pop();
                      }
                    },
                    child: Text(
                      'Add Comment',
                      style: getRegularStyle(color: AppColors.accentColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void showDeleteTaskDialog(
    String groupId,
    AppFlowyGroupItem item,
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
                deleteTask(groupId, item);
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

  void handleTaskMovedToDone(
    String fromGroupId,
    int fromIndex,
    String toGroupId,
    int toIndex,
    Function taskMovedCallBack,
    AppFlowyBoardController controller,
  ) {
    if (toGroupId == AppStrings.DONE) {
      final task = controller.groupDatas
          .firstWhere((element) => element.id == toGroupId);
      final data = task.items[toIndex];

      if (data is RichTextItem) {
        final RichTextItem updatedTask = data.copyWith(
            completionDate:
                DateFormat('MMM d, yyyy h:mm a').format(DateTime.now()));

        if(updatedTask.completionTime.isNotEmpty){
          taskMovedCallBack(toGroupId, updatedTask);
        }else{
          toastInfo(
            msg: "Task wasn't started!",
            status: Status.error,
          );
        }

      }
    }
  }
}
