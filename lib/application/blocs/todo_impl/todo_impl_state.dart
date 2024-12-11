part of 'todo_impl_bloc.dart';

@freezed
class TodoImplState with _$TodoImplState {
  const factory TodoImplState({
    required ProcessingStatus processingStatus,
    required CustomError error,
    required List<RichTextItem> completedTodos,
    required List<ProjectResponse> projects,
    required String currentProject,
  }) = _TodoImplState;

  factory TodoImplState.initial() => TodoImplState(
        processingStatus: ProcessingStatus.initial,
        error: CustomError.initial(),
        completedTodos: [],
        projects: [],
    currentProject: "",
      );
}
