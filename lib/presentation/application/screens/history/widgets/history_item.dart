import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/font_manager.dart';
import '../../../../../core/theme/styles_manager.dart';
import '../../../../../core/theme/values_manager.dart';
import '../../../../../domain/models/rich_text_item/rich_text_item.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
    required this.item,
  });

  final RichTextItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 12,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.grey.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpandablePanel(
        header: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const Gap(5),
            Text(
              item.projectName,
              style: const TextStyle(
                color: Color(0xff7F7F7F),
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
            const Gap(5),
          ],
        ),
        expanded: Padding(
          padding: const EdgeInsets.only(bottom: 8.0, top: 15),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff4fafe),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
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
                            'Task Completion Date: ${item.completionDate}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
                      Text(
                        item.desc,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        'Completion Time: ${item.completionTime.isEmpty ? "Didn't start task" : item.completionTime}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Color(0xfff2f2f2),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                  left: 15,
                  top: 10,
                  bottom: 10,
                ),
                child: SizedBox(
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
                                "Ops! No comment was added.",
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
              ),
            ],
          ),
        ),
        collapsed: const SizedBox.shrink(),
      ),
    );
  }
}
