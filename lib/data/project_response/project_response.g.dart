// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectResponse _$ProjectResponseFromJson(Map<String, dynamic> json) =>
    ProjectResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      comment_count: (json['comment_count'] as num).toInt(),
      color: json['color'] as String,
      is_shared: json['is_shared'] as bool,
      order: (json['order'] as num).toInt(),
      is_favorite: json['is_favorite'] as bool,
      is_inbox_project: json['is_inbox_project'] as bool,
      is_team_inbox: json['is_team_inbox'] as bool,
      view_style: json['view_style'] as String,
      url: json['url'] as String,
      parent_id: json['parent_id'] as String?,
    );

Map<String, dynamic> _$ProjectResponseToJson(ProjectResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comment_count': instance.comment_count,
      'color': instance.color,
      'is_shared': instance.is_shared,
      'order': instance.order,
      'is_favorite': instance.is_favorite,
      'is_inbox_project': instance.is_inbox_project,
      'is_team_inbox': instance.is_team_inbox,
      'view_style': instance.view_style,
      'url': instance.url,
      'parent_id': instance.parent_id,
    };
