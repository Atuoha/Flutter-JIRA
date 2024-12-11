import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/constants/enums/processing_status.dart';
import '../../../data/project_response/project_response.dart';
import '../../../domain/i_todoist_repository/i_todoist_repository.dart';
import '../../../domain/models/custom_error/custom_error.dart';
import '../../../domain/models/rich_text_item/rich_text_item.dart';

part 'todo_impl_event.dart';

part 'todo_impl_state.dart';

part 'todo_impl_bloc.freezed.dart';

@injectable
class TodoImplBloc extends Bloc<TodoImplEvent, TodoImplState> {
  final TodoistRepository todoistRepository;

  TodoImplBloc({required this.todoistRepository})
      : super(TodoImplState.initial()) {
    on<AddProject>(_addProject);
    on<AddTask>(_addTask);
    on<UpdateTask>(_updateTask);
    on<CompleteTask>(_completeTask);
    on<DeleteProject>(_deleteProject);
    on<AddCompletedTodos>(_addCompletedTodos);
    on<RetreiveProjects>(_retrieveProjects);
    on<DeleteCompletedTask>(_deleteCompletedTask);
    on<DeleteAllCompletedTasks>(_deleteAllCompletedTasks);
  }

  Future<void> _addProject(
    AddProject event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      await todoistRepository.addProject(
        requestId: event.requestId,
        name: event.name,
      );
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
        currentProject: event.name,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _addTask(
    AddTask event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(processingStatus: ProcessingStatus.waiting));

    try {
      await todoistRepository.addTask(
        requestId: event.requestId,
        content: event.content,
        projectId: event.projectId,
      );
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _updateTask(
    UpdateTask event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      await todoistRepository.updateTask(
        requestId: event.requestId,
        taskId: event.taskId,
        content: event.content,
      );
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _completeTask(
    CompleteTask event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      await todoistRepository.completeTask(
        requestId: event.requestId,
        taskId: event.taskId,
      );
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _deleteProject(
    DeleteProject event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      await todoistRepository.deleteProject(
        requestId: event.requestId,
        projectId: event.projectId,
      );
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _deleteCompletedTask(
    DeleteCompletedTask event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      final List<RichTextItem> newCompletedTodos =
      state.completedTodos.where((todo) => todo.id != event.id).toList();

      await Future.delayed(const Duration(milliseconds: 500)); // Mocked delay

      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
        completedTodos: newCompletedTodos,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _deleteAllCompletedTasks(
    DeleteAllCompletedTasks event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      await Future.delayed(const Duration(milliseconds: 500)); // Mocked delay
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
        completedTodos: [],
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _addCompletedTodos(
    AddCompletedTodos event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
        completedTodos: event.items,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }

  Future<void> _retrieveProjects(
    RetreiveProjects event,
    Emitter<TodoImplState> emit,
  ) async {
    emit(state.copyWith(
      processingStatus: ProcessingStatus.waiting,
    ));

    try {
      final projects = await todoistRepository.retrieveProjects();
      emit(state.copyWith(
        processingStatus: ProcessingStatus.success,
        projects: projects,
      ));
    } on CustomError catch (e) {
      emit(state.copyWith(
        processingStatus: ProcessingStatus.error,
        error: e,
      ));
    }
  }
}
