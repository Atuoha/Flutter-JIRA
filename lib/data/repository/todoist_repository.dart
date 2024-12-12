import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:todo/domain/models/custom_error/custom_error.dart';

import '../../core/constants/app_strings.dart';
import '../../core/global_config.dart';
import '../../data/api/todoist_api.dart';
import '../../data/project_response/project_response.dart';
import '../../data/task_response/task_response.dart';
import '../../domain/i_todoist_repository/i_todoist_repository.dart';

@LazySingleton(as: TodoistRepository)
class TodoistRepositoryImpl implements TodoistRepository {
  final TodoistApiServiceClient _todoistApiServiceClient;

  TodoistRepositoryImpl(this._todoistApiServiceClient);

  final logger = Logger();

  @override
  Future<ProjectResponse> addProject({
    required String requestId,
    required String name,
  }) async {
    try {
      final project = await _todoistApiServiceClient.addProject(
        requestId,
        {"name": name},
      );

      GlobalConfig.storageService
          .setStringValue(AppStrings.CURRENT_PROJECT_ID, project.id);

      GlobalConfig.storageService
          .setStringValue(AppStrings.CURRENT_PROJECT_NAME, project.name);
      logger.e("PROJECT: ${project.id}");
      return project;
    } on CustomError catch (e) {
      throw CustomError(
        errorMsg: "Failed to add project: $e",
        plugin: "",
        code: "",
      );
    } catch (e) {
      logger.e("ERROR: $e");
      rethrow;
    }
  }

  @override
  Future<TaskResponse> addTask({
    required String requestId,
    required String content,
    required String projectId,
  }) async {
    try {
      final task = await _todoistApiServiceClient.addTask(
        requestId,
        {
          "content": content,
          "project_id": projectId,
        },
      );
      logger.e("TASK: ${task.id}");
      return task;
    } on CustomError catch (e) {
      throw CustomError(
        errorMsg: "Failed to add task: $e",
        plugin: "",
        code: "",
      );
    } catch (e) {
      logger.e("ERROR: $e");
      rethrow;
    }
  }

  @override
  Future<void> updateTask({
    required String requestId,
    required String taskId,
    required String content,
  }) async {
    try {
      await _todoistApiServiceClient.updateTask(
        taskId,
        requestId,
          {
            "content": content,
          },
      );
    } on CustomError catch (e) {
      throw CustomError(
        errorMsg: "Failed to update task: $e",
        plugin: "",
        code: "",
      );
    } catch (e) {
      logger.e("ERROR: $e");
      rethrow;
    }
  }

  @override
  Future<void> completeTask({
    required String requestId,
    required String taskId,
  }) async {
    try {
      await _todoistApiServiceClient.completeTask(
        taskId,
        requestId,
      );
    } on CustomError catch (e) {
      throw CustomError(
        errorMsg: "Failed to complete task: $e",
        plugin: "",
        code: "",
      );
    } catch (e) {
      logger.e("ERROR: $e");
      rethrow;
    }
  }

  @override
  Future<void> deleteProject({
    required String requestId,
    required String projectId,
  }) async {
    try {
      await _todoistApiServiceClient.deleteProject(
        projectId,
        requestId,
      );
    } on CustomError catch (e) {
      throw CustomError(
        errorMsg: "Failed to delete project: $e",
        plugin: "",
        code: "",
      );
    } catch (e) {
      logger.e("ERROR: $e");
      rethrow;
    }
  }

  @override
  Future<List<ProjectResponse>> retrieveProjects() async {
    try {
      final projects = await _todoistApiServiceClient.retrieveProjects();

      return projects;
    } on CustomError catch (e) {
      throw CustomError(
        errorMsg: "Failed to retrieve project: $e",
        plugin: "",
        code: "",
      );
    } catch (e) {
      logger.e("ERROR: $e");
      rethrow;
    }
  }
}
