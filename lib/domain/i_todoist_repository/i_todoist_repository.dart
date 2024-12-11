import '../../data/project_response/project_response.dart';
import '../../data/task_response/task_response.dart';

abstract class TodoistRepository {
  Future<List<ProjectResponse>> retrieveProjects();

  Future<ProjectResponse> addProject({
    required String requestId,
    required String name,
  });

  Future<TaskResponse> addTask({
    required String requestId,
    required String content,
    required String projectId,
  });

  Future<void> updateTask({
    required String requestId,
    required String taskId,
    required String content,
  });

  Future<void> completeTask({
    required String requestId,
    required String taskId,
  });

  Future<void> deleteProject({
    required String requestId,
    required String projectId,
  });
}
