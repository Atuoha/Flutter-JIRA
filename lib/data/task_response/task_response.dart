import 'package:json_annotation/json_annotation.dart';

part 'task_response.g.dart';

@JsonSerializable()
class TaskResponse {
  final String id;
  final String content;
  final String description;
  final int comment_count;
  final bool is_completed;
  final int order;
  final int priority;
  final String project_id;
  final List<String> labels;
  final String? due;
  final String? section_id;
  final String? parent_id;
  final String? creator_id;
  final String? created_at;
  final String? assignee_id;
  final String? assigner_id;
  final String url;

  TaskResponse({
    required this.id,
    required this.content,
    required this.description,
    required this.comment_count,
    required this.is_completed,
    required this.order,
    required this.priority,
    required this.project_id,
    required this.labels,
    this.due,
    this.section_id,
    this.parent_id,
    this.creator_id,
    this.created_at,
    this.assignee_id,
    this.assigner_id,
    required this.url,
  });

  factory TaskResponse.initial() {
    return TaskResponse(
      id: '',
      content: '',
      description: '',
      comment_count: 0,
      is_completed: false,
      order: 0,
      priority: 0,
      project_id: '',
      labels: const [],
      due: null,
      section_id: null,
      parent_id: null,
      creator_id: null,
      created_at: null,
      assignee_id: null,
      assigner_id: null,
      url: '',
    );
  }

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TaskResponseToJson(this);
}
