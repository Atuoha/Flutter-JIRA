import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/theme/font_manager.dart';
import '../../../core/theme/styles_manager.dart';

Future<void> areYouSureDialog({
  required String title,
  required String content,
  required BuildContext context,
  required Function action,
  bool isIdInvolved = false,
  String id = '',
  String confirmText = 'Yes',
  String declineText = 'Cancel',
}) {
  return showDialog(
    context: context,
    builder: (context) => !Platform.isIOS
        ? CupertinoAlertDialog(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: getRegularStyle(
                color: Colors.black,
                fontSize: FontSize.s16,
              ),
            ),
            content: Text(
              content,
              textAlign: TextAlign.center,
            ),
            actions: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: AppColors.errorColor),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          declineText,
                          style: getRegularStyle(
                            color: AppColors.errorColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side:
                                const BorderSide(color: AppColors.primaryColor),
                          ),
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () => isIdInvolved ? action(id) : action(),
                        child: Text(
                          confirmText,
                          style: getRegularStyle(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : AlertDialog(
            backgroundColor: Colors.white,
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: getRegularStyle(
                color: Colors.black,
                fontSize: FontSize.s16,
              ),
            ),
            content: Text(
              content,
              textAlign: TextAlign.center,
            ),
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: AppColors.errorColor),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      declineText,
                      style: getRegularStyle(
                        color: AppColors.errorColor,
                      ),
                    ),
                  ),
                  const Gap(10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        backgroundColor: Colors.white),
                    onPressed: () => isIdInvolved ? action(id) : action(),
                    child: Text(
                      confirmText,
                      style: getRegularStyle(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
  );
}
