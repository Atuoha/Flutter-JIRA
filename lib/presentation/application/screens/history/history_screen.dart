import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:todo/application/blocs/todo_impl/todo_impl_bloc.dart';
import 'package:todo/core/extensions/loading.dart';
import 'package:todo/presentation/application/screens/history/widgets/history_item.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/enums/processing_status.dart';
import '../../../../core/constants/enums/status.dart';
import '../../../../core/theme/font_manager.dart';
import '../../../../core/theme/styles_manager.dart';
import '../../../../core/theme/values_manager.dart';
import '../../../../domain/models/rich_text_item/rich_text_item.dart';
import '../../../../gen/assets.gen.dart';
import '../../../core/components/toast_info.dart';
import 'controller/history_controller.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});


  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
   List<RichTextItem> completedTodos = [];

  void deleteTask(String itemId) {
    context.read<TodoImplBloc>().add(DeleteCompletedTask(id: itemId));
  }

  void deleteAllTasks() {
    context.read<TodoImplBloc>().add(const DeleteAllCompletedTasks());
  }

  @override
  void initState() {
    super.initState();

    setState(() {
      completedTodos = context.read<TodoImplBloc>().state.completedTodos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TodoImplBloc, TodoImplState>(
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
            msg: 'Deleted Successfully.',
            status: Status.success,
          );
          setState(() {
            completedTodos = context.read<TodoImplBloc>().state.completedTodos;
          });
          context.hideLoader();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            style: ButtonStyle(
              iconSize: MaterialStateProperty.all(26),
            ),
          ),
          backgroundColor: AppColors.primaryColor.withOpacity(0.4),
          title: Text(
            "Completed Tasks",
            style: getRegularStyle(
              color: Colors.white,
              fontSize: FontSize.s18,
            ),
          ),
          actions: [
            completedTodos.isNotEmpty
                ? GestureDetector(
                    onTap: () {
                      HistoryController().showDeleteAllTasksDialog(
                        context,
                        deleteAllTasks,
                      );
                    },
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 4,
                      children: [
                        Text(
                          'Delete All',
                          style: getRegularStyle(color: Colors.white),
                        ),
                        const Icon(
                          Icons.delete_forever,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
            const Gap(AppSize.s18)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: completedTodos.isNotEmpty
              ? ListView.builder(
                  itemCount: completedTodos.length,
                  itemBuilder: (context, index) {
                    final RichTextItem item = completedTodos[index];

                    return Slidable(
                      key: const ValueKey(0),
                      startActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            padding: const EdgeInsets.only(right: 3),
                            borderRadius: BorderRadius.circular(10),
                            onPressed: (context) =>
                                HistoryController().showDeleteTaskDialog(
                              item.id,
                              context,
                              deleteTask,
                            ),
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: HistoryItem(item: item),
                    );
                  })
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Assets.images.opps.image(width: 150),
                        const Gap(10),
                        Text(
                          "Ops! No completed tasks found.",
                          textAlign: TextAlign.center,
                          style: getRegularStyle(
                              color: AppColors.primaryFourElementText,
                              fontSize: FontSize.s16),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
