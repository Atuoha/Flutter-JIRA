import 'package:json_annotation/json_annotation.dart';

part 'project_response.g.dart';

@JsonSerializable()
class ProjectResponse {
  final String id;
  final String name;
  final int comment_count;
  final String color;
  final bool is_shared;
  final int order;
  final bool is_favorite;
  final bool is_inbox_project;
  final bool is_team_inbox;
  final String view_style;
  final String url;
  final String? parent_id;

  ProjectResponse({
    required this.id,
    required this.name,
    required this.comment_count,
    required this.color,
    required this.is_shared,
    required this.order,
    required this.is_favorite,
    required this.is_inbox_project,
    required this.is_team_inbox,
    required this.view_style,
    required this.url,
    this.parent_id,
  });

  factory ProjectResponse.initial() {
    return ProjectResponse(
      id: '',
      name: '',
      comment_count: 0,
      color: '#FFFFFF',
      is_shared: false,
      order: 0,
      is_favorite: false,
      is_inbox_project: false,
      is_team_inbox: false,
      view_style: 'list',
      url: '',
      parent_id: null,
    );
  }

  factory ProjectResponse.fromJson(Map<String, dynamic> json) =>
      _$ProjectResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectResponseToJson(this);
}
