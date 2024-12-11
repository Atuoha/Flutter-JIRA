// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskResponse _$TaskResponseFromJson(Map<String, dynamic> json) => TaskResponse(
      id: json['id'] as String,
      content: json['content'] as String,
      description: json['description'] as String,
      comment_count: (json['comment_count'] as num).toInt(),
      is_completed: json['is_completed'] as bool,
      order: (json['order'] as num).toInt(),
      priority: (json['priority'] as num).toInt(),
      project_id: json['project_id'] as String,
      labels:
          (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
      due: json['due'] as String?,
      section_id: json['section_id'] as String?,
      parent_id: json['parent_id'] as String?,
      creator_id: json['creator_id'] as String?,
      created_at: json['created_at'] as String?,
      assignee_id: json['assignee_id'] as String?,
      assigner_id: json['assigner_id'] as String?,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TaskResponseToJson(TaskResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'description': instance.description,
      'comment_count': instance.comment_count,
      'is_completed': instance.is_completed,
      'order': instance.order,
      'priority': instance.priority,
      'project_id': instance.project_id,
      'labels': instance.labels,
      'due': instance.due,
      'section_id': instance.section_id,
      'parent_id': instance.parent_id,
      'creator_id': instance.creator_id,
      'created_at': instance.created_at,
      'assignee_id': instance.assignee_id,
      'assigner_id': instance.assigner_id,
      'url': instance.url,
    };
