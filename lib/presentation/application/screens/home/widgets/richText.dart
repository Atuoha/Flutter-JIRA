import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/theme/styles_manager.dart';
import '../../../../../core/theme/values_manager.dart';
import '../../../../../domain/models/rich_text_item/rich_text_item.dart';

Widget richTextCard({
  required RichTextItem item,
  required String groupId,
  required Function showCommentsBottomSheet,
  required BuildContext context,
  required Function showCommentBottomSheetCallBack,
}) {
  return Align(
    key: Key(item.id),
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title,
            style: const TextStyle(fontSize: 14),
            textAlign: TextAlign.left,
          ),
          const Gap(10),
          Text(
            item.desc,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const Gap(10),
          Wrap(
            spacing: 5,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              const Icon(
                Icons.calendar_month,
                color: Colors.grey,
              ),
              Text(
                'Task Start Date: ${item.date}',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          const Gap(10),
          if (groupId == AppStrings.DONE)
            Wrap(
              spacing: 5,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                Text(
                  'Task Completion Date: ${item.completionDate}',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          const Gap(10),
          if (item.comments.isNotEmpty)
            Text(
              '${item.comments.length} Comments',
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.accentColor,
              ),
            ),
          const Gap(5),
          ElevatedButton.icon(
            onPressed: () {
              showCommentsBottomSheet(
                item,
                context,
                showCommentBottomSheetCallBack,
              );
            },
            icon: const Icon(
              Icons.sms_outlined,
              color: Colors.white,
              size: AppSize.s16,
            ),
            label: Text(
              '${item.comments.isEmpty ? "Add" : "View"} Comment',
              style: getRegularStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
