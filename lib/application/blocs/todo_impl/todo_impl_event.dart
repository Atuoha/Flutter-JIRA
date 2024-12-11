part of 'todo_impl_bloc.dart';

@freezed
class TodoImplEvent with _$TodoImplEvent {
  const factory TodoImplEvent.addProject({
    required String requestId,
    required String name,
  }) = AddProject;

  const factory TodoImplEvent.addTask({
    required String requestId,
    required String content,
    required String projectId,
  }) = AddTask;

  const factory TodoImplEvent.updateTask({
    required String requestId,
    required String taskId,
    required String content,
  }) = UpdateTask;

  const factory TodoImplEvent.completeTask({
    required String requestId,
    required String taskId,
  }) = CompleteTask;

  const factory TodoImplEvent.deleteProject({
    required String requestId,
    required String projectId,
  }) = DeleteProject;

  const factory TodoImplEvent.addCompletedTodos({
    required List<RichTextItem> items,
  }) = AddCompletedTodos;

  const factory TodoImplEvent.deleteCompletedTask({
    required String id,
  }) = DeleteCompletedTask;

  const factory TodoImplEvent.deleteAllCompletedTasks() = DeleteAllCompletedTasks;

  const factory TodoImplEvent.retrieveProjects() = RetreiveProjects;
}
