import 'package:flutter/material.dart';
import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/application/blocs/todo_impl/todo_impl_bloc.dart';
import 'package:todo/core/extensions/loading.dart';
import 'package:todo/core/theme/styles_manager.dart';
import 'package:todo/core/theme/values_manager.dart';
import 'package:todo/presentation/application/screens/home/widgets/build_card.dart';
import 'package:todo/presentation/core/components/toast_info.dart';
import 'package:uuid/uuid.dart';
import '../../../../application/routes/app_route_config.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/enums/processing_status.dart';
import '../../../../core/constants/enums/status.dart';
import '../../../../core/extensions/hex.dart';
import '../../../../core/global_config.dart';
import '../../../../core/theme/font_manager.dart';
import '../../../../domain/models/rich_text_item/rich_text_item.dart';
import 'controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AppFlowyBoardController controller;
  late AppFlowyBoardScrollController boardController;
  String projectName = "";

  @override
  void initState() {
    super.initState();

    initFnc();
  }

  void initFnc() {
    controller = AppFlowyBoardController(
        onMoveGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move item from $fromIndex to $toIndex');
    }, onMoveGroupItem: (groupId, fromIndex, toIndex) {
      debugPrint('Move $groupId:$fromIndex to $groupId:$toIndex');
    }, onMoveGroupItemToGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
      debugPrint('Move $fromGroupId:$fromIndex to $toGroupId:$toIndex');

      HomeController().handleTaskMovedToDone(
        fromGroupId,
        fromIndex,
        toGroupId,
        toIndex,
        taskMovedCallBack,
        controller,
      );
    });

    boardController = AppFlowyBoardScrollController();
    final group1 = AppFlowyGroupData(
        id: AppStrings.TODO, name: AppStrings.TODO, items: []);

    final group2 = AppFlowyGroupData(
      id: AppStrings.IN_PROGRESS,
      name: AppStrings.IN_PROGRESS,
      items: <AppFlowyGroupItem>[],
    );

    final group3 = AppFlowyGroupData(
      id: AppStrings.DONE,
      name: AppStrings.DONE,
      items: <AppFlowyGroupItem>[],
    );

    controller.addGroup(group1);
    controller.addGroup(group2);
    controller.addGroup(group3);

    context.read<TodoImplBloc>().add(const RetreiveProjects());
  }

  // task moved callback
  void taskMovedCallBack(
    String toGroupId,
    RichTextItem updatedTask,
  ) {
    setState(() {
      controller.updateGroupItem(
        toGroupId,
        updatedTask,
      );
    });
  }

  // clear board
  void callBoard() {
    setState(() {
      for (var groupId in controller.groupIds) {
        final groupData = controller.getGroupController(groupId);

        if (groupData != null) {
          for (var item in groupData.items) {
            controller.removeGroupItem(groupId, item.id);
          }
        }
      }
    });
    toastInfo(
      msg: AppStrings.NEW_PROJECT_MSG,
      status: Status.success,
    );
  }

  // add project callback
  void addProjectCallBack({
    required String title,
  }) {
    setState(() {
      projectName = title;
    });

    final groupItems =
        controller.getGroupController(AppStrings.DONE)?.items ?? [];
    final List<RichTextItem> items =
        groupItems.whereType<RichTextItem>().toList();

    if (items.isEmpty && GlobalConfig.storageService
        .getStringValue(AppStrings.CURRENT_PROJECT_ID)
        .isNotEmpty) {
      toastInfo(
        msg: AppStrings.EMPTY_BOARD_MSG,
        status: Status.error,
      );
      debugPrint(
        AppStrings.EMPTY_BOARD_MSG,
      );
    } else {
      debugPrint('Collected ${items.length} items from the DONE group');
      context.read<TodoImplBloc>().add(
            AddCompletedTodos(items: items),
          ); // add to bloc
      context.read<TodoImplBloc>().add(
            AddProject(
              requestId: const Uuid().v4(),
              name: title,
            ),
          );

      // Clear Board
      callBoard();
    }

    Navigator.of(context).pop();
  }

  // add task callback
  void addTaskCallBack({
    required String title,
    required String subtitle,
    required String groupId,
  }) {
    setState(() {
      final newItem = RichTextItem(
        title: title,
        desc: subtitle,
        projectName: projectName,
      );
      controller.addGroupItem(groupId, newItem);
      newItem.resetTimer();
    });
    context.read<TodoImplBloc>().add(
          AddTask(
            requestId: const Uuid().v4(),
            content: title,
            projectId: GlobalConfig.storageService
                .getStringValue(AppStrings.CURRENT_PROJECT_ID),
          ),
        );
    Navigator.of(context).pop();
    boardController.scrollToBottom(groupId);
  }

  // edit task callback
  void editTaskCallBack({
    required String groupId,
    required RichTextItem item,
    required String newTitle,
    required String newSubtitle,
  }) {
    setState(() {
      controller.updateGroupItem(
        groupId,
        item.copyWith(
          title: newTitle,
          desc: newSubtitle,
        ),
      );
    });
  }

  // comment show callback
  void showCommentBottomSheetCallBack({
    required RichTextItem item,
    required String newComment,
  }) {
    setState(() {
      item.addComment(newComment);
    });
  }

  // delete task
  void deleteTask(String groupId, AppFlowyGroupItem item) {
    setState(() {
      controller.removeGroupItem(groupId, item.id);
    });
  }

  // toggle timer
  void toggleTimer(RichTextItem item) {
    setState(() {
      if (item.stopwatch.isRunning) {
        item.stopTimer();
      } else {
        item.startTimer();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final config = AppFlowyBoardConfig(
      groupBackgroundColor: HexColor.fromHex('#F7F8FC'),
      stretchGroupHeight: false,
    );

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      top: false,
      child: BlocListener<TodoImplBloc, TodoImplState>(
        listener: (context, state) {
          if (state.processingStatus == ProcessingStatus.waiting) {
            context.showLoader();
          } else if (state.processingStatus == ProcessingStatus.error) {
            context.hideLoader();
            toastInfo(
              msg: 'Ops! ${state.error.errorMsg}',
              status: Status.error,
            );
          } else if (state.processingStatus == ProcessingStatus.success) {
            context.hideLoader();
            toastInfo(
              msg: 'Action performed successfully.',
              status: Status.success,
            );
            context.hideLoader();
          }
        },
        child: Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: AppColors.secondaryColor,
            onPressed: () {
              HomeController().showAddProjectModal(
                context,
                addProjectCallBack,
              );
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
            label: Text(
              'New Project',
              style: getRegularStyle(color: Colors.white),
            ),
          ),
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor.withOpacity(0.4),
            title: Text(
              "Todio",
              style: getRegularStyle(
                color: Colors.white,
                fontSize: FontSize.s18,
              ),
            ),
            leadingWidth: 150,
            leading: Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 18),
              child: Text(
                'Project:$projectName',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: getRegularStyle(color: Colors.white),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  context.pushNamed(
                    AppRoutes.history,
                  );
                },
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 4,
                  children: [
                    Text(
                      'History',
                      style: getRegularStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.history,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
              const Gap(AppSize.s18)
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: AppFlowyBoard(
              controller: controller,
              cardBuilder: (context, group, groupItem) {
                return AppFlowyGroupCard(
                  key: ValueKey(groupItem.id),
                  child: GestureDetector(
                    child: buildCard(
                      group: group,
                      item: groupItem,
                      showEditTaskModal: HomeController().showEditTaskModal,
                      showDeleteTaskDialog:
                          HomeController().showDeleteTaskDialog,
                      showCommentsBottomSheet:
                          HomeController().showCommentsBottomSheet,
                      toggleTimer: toggleTimer,
                      context: context,
                      showCommentBottomSheetCallBack:
                          showCommentBottomSheetCallBack,
                      editTaskCallBack: editTaskCallBack,
                      deleteTask: deleteTask,
                    ),
                  ),
                );
              },
              boardScrollController: boardController,
              footerBuilder: (context, columnData) {
                return AppFlowyGroupFooter(
                  icon: const Icon(Icons.add, size: 20),
                  title: const Text('New Task'),
                  height: 50,
                  margin: config.groupBodyPadding,
                  onAddButtonClick: () {
                    if (GlobalConfig.storageService
                        .getStringValue(AppStrings.CURRENT_PROJECT_ID)
                        .isNotEmpty) {
                      HomeController().showAddTaskModal(
                          columnData.id, context, addTaskCallBack);
                      boardController.scrollToBottom(columnData.id);
                    } else {
                      toastInfo(
                        msg: "Create a project first",
                        status: Status.error,
                      );
                    }
                  },
                );
              },
              headerBuilder: (context, columnData) {
                return AppFlowyGroupHeader(
                  icon: columnData.id == AppStrings.TODO
                      ? const Icon(Icons.note, color: Colors.blue)
                      : columnData.id == AppStrings.IN_PROGRESS
                          ? const Icon(Icons.sync, color: Colors.orange)
                          : const Icon(Icons.check_circle, color: Colors.green),
                  title: SizedBox(
                    width: size.width > 600 ? 90 : size.width * 0.3,
                    child: Text(
                      columnData.headerData.groupName,
                      style: getMediumStyle(
                        color: Colors.black,
                        fontSize: FontSize.s16,
                      ),
                    ),
                  ),
                  addIcon: const Icon(Icons.assignment, size: 20),
                  moreIcon: const Icon(Icons.more_horiz, size: 20),
                  height: 30,
                  margin: config.groupBodyPadding,
                );
              },
              groupConstraints: BoxConstraints.tightFor(
                width: size.width > 600 ? 400 : size.width * 0.8,
              ),
              config: config,
            ),
          ),
        ),
      ),
    );
  }
}
