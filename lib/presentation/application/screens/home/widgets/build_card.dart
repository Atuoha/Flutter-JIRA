import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/theme/font_manager.dart';
import 'package:todo/presentation/application/screens/home/widgets/richText.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/styles_manager.dart';
import '../../../../../domain/models/rich_text_item/rich_text_item.dart';

Widget buildCard({
  required AppFlowyGroupData group,
  required AppFlowyGroupItem item,
  required Function showEditTaskModal,
  required Function showDeleteTaskDialog,
  required Function showCommentsBottomSheet,
  required Function toggleTimer,
  required BuildContext context,
  required Function showCommentBottomSheetCallBack,
  required Function editTaskCallBack,
  required Function deleteTask,
}) {
  if (item is RichTextItem) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  showEditTaskModal(
                    group.id,
                    item,
                    context,
                    editTaskCallBack,
                  );
                },
                child: const Wrap(
                  spacing: 2,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      size: 16,
                      color: AppColors.secondaryColor,
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDeleteTaskDialog(
                    group.id,
                    item,
                    context,
                    deleteTask,
                  );
                },
                child: Wrap(
                  spacing: 2,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(
                      Icons.delete_forever,
                      size: 16,
                      color: AppColors.errorColor,
                    ),
                    Text(
                      'Delete',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.errorColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          richTextCard(
            item: item,
            groupId: group.id,
            showCommentsBottomSheet: showCommentsBottomSheet,
            context: context,
            showCommentBottomSheetCallBack: showCommentBottomSheetCallBack,
          ),
          if (group.id == AppStrings.IN_PROGRESS)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                item.stopwatch.isRunning ||
                        item.completionTime == AppStrings.EMPTY_TIME
                    ? const SizedBox.shrink()
                    : item.completionTime.isEmpty
                        ? const SizedBox.shrink()
                        : Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Task Completion Time: ',
                                  style: getMediumStyle(
                                    color: Colors.black,
                                    fontSize: FontSize.s13,
                                  ),
                                ),
                                TextSpan(
                                  text: item.completionTime,
                                  style: getMediumStyle(
                                    color: AppColors.primaryFourElementText,
                                    fontSize: FontSize.s13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                item.completionTime.isEmpty
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: item.stopwatch.isRunning
                                ? AppColors.secondaryColor
                                : AppColors.accentColor),
                        onPressed: () {
                          toggleTimer(item);
                        },
                        child: Text(
                          item.stopwatch.isRunning
                              ? 'In Progress... [Click To Stop Task]'
                              : 'Start Task',
                          style: getRegularStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          if (group.id == AppStrings.DONE)
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Task Completion Time: ',
                    style: getMediumStyle(
                      color: Colors.black,
                      fontSize: FontSize.s13,
                    ),
                  ),
                  TextSpan(
                    text: item.completionTime.isEmpty
                        ? "Didn't start task"
                        : item.completionTime,
                    style: getMediumStyle(
                      color: AppColors.primaryFourElementText,
                      fontSize: FontSize.s13,
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }

  throw UnimplementedError();
}
