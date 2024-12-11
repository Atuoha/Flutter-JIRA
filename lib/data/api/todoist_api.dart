import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../error_logger/error_logger.dart';
import '../project_response/project_response.dart';
import '../task_response/task_response.dart';

part 'todoist_api.g.dart';

@RestApi(baseUrl: "https://api.todoist.com/rest/v2")
abstract class TodoistApiServiceClient {
  factory TodoistApiServiceClient(Dio dio, {String baseUrl}) =
      _TodoistApiServiceClient;

  @GET("/projects")
  Future<List<ProjectResponse>> retrieveProjects();

  @POST("/projects")
  Future<ProjectResponse> addProject(
    @Header("X-Request-Id") String requestId,
    @Body() Map<String, dynamic> projectData,
  );

  @POST("/tasks")
  Future<TaskResponse> addTask(
    @Header("X-Request-Id") String requestId,
    @Body() Map<String, dynamic> taskData,
  );

  @POST("/tasks/{id}")
  Future<void> updateTask(
    @Path("id") String taskId,
    @Header("X-Request-Id") String requestId,
    @Body() Map<String, dynamic> updatedData,
  );

  @POST("/tasks/{id}/close")
  Future<void> completeTask(
    @Path("id") String taskId,
    @Header("X-Request-Id") String requestId,
  );

  @DELETE("/projects/{id}")
  Future<void> deleteProject(
    @Path("id") String projectId,
    @Header("X-Request-Id") String requestId,
  );
}
