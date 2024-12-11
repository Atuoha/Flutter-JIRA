// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_impl_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoImplEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoImplEventCopyWith<$Res> {
  factory $TodoImplEventCopyWith(
          TodoImplEvent value, $Res Function(TodoImplEvent) then) =
      _$TodoImplEventCopyWithImpl<$Res, TodoImplEvent>;
}

/// @nodoc
class _$TodoImplEventCopyWithImpl<$Res, $Val extends TodoImplEvent>
    implements $TodoImplEventCopyWith<$Res> {
  _$TodoImplEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddProjectImplCopyWith<$Res> {
  factory _$$AddProjectImplCopyWith(
          _$AddProjectImpl value, $Res Function(_$AddProjectImpl) then) =
      __$$AddProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, String name});
}

/// @nodoc
class __$$AddProjectImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$AddProjectImpl>
    implements _$$AddProjectImplCopyWith<$Res> {
  __$$AddProjectImplCopyWithImpl(
      _$AddProjectImpl _value, $Res Function(_$AddProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? name = null,
  }) {
    return _then(_$AddProjectImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProjectImpl implements AddProject {
  const _$AddProjectImpl({required this.requestId, required this.name});

  @override
  final String requestId;
  @override
  final String name;

  @override
  String toString() {
    return 'TodoImplEvent.addProject(requestId: $requestId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProjectImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProjectImplCopyWith<_$AddProjectImpl> get copyWith =>
      __$$AddProjectImplCopyWithImpl<_$AddProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return addProject(requestId, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return addProject?.call(requestId, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (addProject != null) {
      return addProject(requestId, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return addProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return addProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (addProject != null) {
      return addProject(this);
    }
    return orElse();
  }
}

abstract class AddProject implements TodoImplEvent {
  const factory AddProject(
      {required final String requestId,
      required final String name}) = _$AddProjectImpl;

  String get requestId;
  String get name;
  @JsonKey(ignore: true)
  _$$AddProjectImplCopyWith<_$AddProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddTaskImplCopyWith<$Res> {
  factory _$$AddTaskImplCopyWith(
          _$AddTaskImpl value, $Res Function(_$AddTaskImpl) then) =
      __$$AddTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, String content, String projectId});
}

/// @nodoc
class __$$AddTaskImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$AddTaskImpl>
    implements _$$AddTaskImplCopyWith<$Res> {
  __$$AddTaskImplCopyWithImpl(
      _$AddTaskImpl _value, $Res Function(_$AddTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? content = null,
    Object? projectId = null,
  }) {
    return _then(_$AddTaskImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTaskImpl implements AddTask {
  const _$AddTaskImpl(
      {required this.requestId,
      required this.content,
      required this.projectId});

  @override
  final String requestId;
  @override
  final String content;
  @override
  final String projectId;

  @override
  String toString() {
    return 'TodoImplEvent.addTask(requestId: $requestId, content: $content, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, content, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      __$$AddTaskImplCopyWithImpl<_$AddTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return addTask(requestId, content, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return addTask?.call(requestId, content, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(requestId, content, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class AddTask implements TodoImplEvent {
  const factory AddTask(
      {required final String requestId,
      required final String content,
      required final String projectId}) = _$AddTaskImpl;

  String get requestId;
  String get content;
  String get projectId;
  @JsonKey(ignore: true)
  _$$AddTaskImplCopyWith<_$AddTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskImplCopyWith<$Res> {
  factory _$$UpdateTaskImplCopyWith(
          _$UpdateTaskImpl value, $Res Function(_$UpdateTaskImpl) then) =
      __$$UpdateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, String taskId, String content});
}

/// @nodoc
class __$$UpdateTaskImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$UpdateTaskImpl>
    implements _$$UpdateTaskImplCopyWith<$Res> {
  __$$UpdateTaskImplCopyWithImpl(
      _$UpdateTaskImpl _value, $Res Function(_$UpdateTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? taskId = null,
    Object? content = null,
  }) {
    return _then(_$UpdateTaskImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateTaskImpl implements UpdateTask {
  const _$UpdateTaskImpl(
      {required this.requestId, required this.taskId, required this.content});

  @override
  final String requestId;
  @override
  final String taskId;
  @override
  final String content;

  @override
  String toString() {
    return 'TodoImplEvent.updateTask(requestId: $requestId, taskId: $taskId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, taskId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      __$$UpdateTaskImplCopyWithImpl<_$UpdateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return updateTask(requestId, taskId, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return updateTask?.call(requestId, taskId, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(requestId, taskId, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class UpdateTask implements TodoImplEvent {
  const factory UpdateTask(
      {required final String requestId,
      required final String taskId,
      required final String content}) = _$UpdateTaskImpl;

  String get requestId;
  String get taskId;
  String get content;
  @JsonKey(ignore: true)
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteTaskImplCopyWith<$Res> {
  factory _$$CompleteTaskImplCopyWith(
          _$CompleteTaskImpl value, $Res Function(_$CompleteTaskImpl) then) =
      __$$CompleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, String taskId});
}

/// @nodoc
class __$$CompleteTaskImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$CompleteTaskImpl>
    implements _$$CompleteTaskImplCopyWith<$Res> {
  __$$CompleteTaskImplCopyWithImpl(
      _$CompleteTaskImpl _value, $Res Function(_$CompleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? taskId = null,
  }) {
    return _then(_$CompleteTaskImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompleteTaskImpl implements CompleteTask {
  const _$CompleteTaskImpl({required this.requestId, required this.taskId});

  @override
  final String requestId;
  @override
  final String taskId;

  @override
  String toString() {
    return 'TodoImplEvent.completeTask(requestId: $requestId, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTaskImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      __$$CompleteTaskImplCopyWithImpl<_$CompleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return completeTask(requestId, taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return completeTask?.call(requestId, taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(requestId, taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class CompleteTask implements TodoImplEvent {
  const factory CompleteTask(
      {required final String requestId,
      required final String taskId}) = _$CompleteTaskImpl;

  String get requestId;
  String get taskId;
  @JsonKey(ignore: true)
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProjectImplCopyWith<$Res> {
  factory _$$DeleteProjectImplCopyWith(
          _$DeleteProjectImpl value, $Res Function(_$DeleteProjectImpl) then) =
      __$$DeleteProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String requestId, String projectId});
}

/// @nodoc
class __$$DeleteProjectImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$DeleteProjectImpl>
    implements _$$DeleteProjectImplCopyWith<$Res> {
  __$$DeleteProjectImplCopyWithImpl(
      _$DeleteProjectImpl _value, $Res Function(_$DeleteProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? projectId = null,
  }) {
    return _then(_$DeleteProjectImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProjectImpl implements DeleteProject {
  const _$DeleteProjectImpl({required this.requestId, required this.projectId});

  @override
  final String requestId;
  @override
  final String projectId;

  @override
  String toString() {
    return 'TodoImplEvent.deleteProject(requestId: $requestId, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProjectImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith =>
      __$$DeleteProjectImplCopyWithImpl<_$DeleteProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return deleteProject(requestId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return deleteProject?.call(requestId, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(requestId, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return deleteProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return deleteProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(this);
    }
    return orElse();
  }
}

abstract class DeleteProject implements TodoImplEvent {
  const factory DeleteProject(
      {required final String requestId,
      required final String projectId}) = _$DeleteProjectImpl;

  String get requestId;
  String get projectId;
  @JsonKey(ignore: true)
  _$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCompletedTodosImplCopyWith<$Res> {
  factory _$$AddCompletedTodosImplCopyWith(_$AddCompletedTodosImpl value,
          $Res Function(_$AddCompletedTodosImpl) then) =
      __$$AddCompletedTodosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RichTextItem> items});
}

/// @nodoc
class __$$AddCompletedTodosImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$AddCompletedTodosImpl>
    implements _$$AddCompletedTodosImplCopyWith<$Res> {
  __$$AddCompletedTodosImplCopyWithImpl(_$AddCompletedTodosImpl _value,
      $Res Function(_$AddCompletedTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$AddCompletedTodosImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RichTextItem>,
    ));
  }
}

/// @nodoc

class _$AddCompletedTodosImpl implements AddCompletedTodos {
  const _$AddCompletedTodosImpl({required final List<RichTextItem> items})
      : _items = items;

  final List<RichTextItem> _items;
  @override
  List<RichTextItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TodoImplEvent.addCompletedTodos(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCompletedTodosImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCompletedTodosImplCopyWith<_$AddCompletedTodosImpl> get copyWith =>
      __$$AddCompletedTodosImplCopyWithImpl<_$AddCompletedTodosImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return addCompletedTodos(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return addCompletedTodos?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (addCompletedTodos != null) {
      return addCompletedTodos(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return addCompletedTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return addCompletedTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (addCompletedTodos != null) {
      return addCompletedTodos(this);
    }
    return orElse();
  }
}

abstract class AddCompletedTodos implements TodoImplEvent {
  const factory AddCompletedTodos({required final List<RichTextItem> items}) =
      _$AddCompletedTodosImpl;

  List<RichTextItem> get items;
  @JsonKey(ignore: true)
  _$$AddCompletedTodosImplCopyWith<_$AddCompletedTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCompletedTaskImplCopyWith<$Res> {
  factory _$$DeleteCompletedTaskImplCopyWith(_$DeleteCompletedTaskImpl value,
          $Res Function(_$DeleteCompletedTaskImpl) then) =
      __$$DeleteCompletedTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteCompletedTaskImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$DeleteCompletedTaskImpl>
    implements _$$DeleteCompletedTaskImplCopyWith<$Res> {
  __$$DeleteCompletedTaskImplCopyWithImpl(_$DeleteCompletedTaskImpl _value,
      $Res Function(_$DeleteCompletedTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCompletedTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCompletedTaskImpl implements DeleteCompletedTask {
  const _$DeleteCompletedTaskImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TodoImplEvent.deleteCompletedTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCompletedTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCompletedTaskImplCopyWith<_$DeleteCompletedTaskImpl> get copyWith =>
      __$$DeleteCompletedTaskImplCopyWithImpl<_$DeleteCompletedTaskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return deleteCompletedTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return deleteCompletedTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (deleteCompletedTask != null) {
      return deleteCompletedTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return deleteCompletedTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return deleteCompletedTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (deleteCompletedTask != null) {
      return deleteCompletedTask(this);
    }
    return orElse();
  }
}

abstract class DeleteCompletedTask implements TodoImplEvent {
  const factory DeleteCompletedTask({required final String id}) =
      _$DeleteCompletedTaskImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteCompletedTaskImplCopyWith<_$DeleteCompletedTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllCompletedTasksImplCopyWith<$Res> {
  factory _$$DeleteAllCompletedTasksImplCopyWith(
          _$DeleteAllCompletedTasksImpl value,
          $Res Function(_$DeleteAllCompletedTasksImpl) then) =
      __$$DeleteAllCompletedTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteAllCompletedTasksImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$DeleteAllCompletedTasksImpl>
    implements _$$DeleteAllCompletedTasksImplCopyWith<$Res> {
  __$$DeleteAllCompletedTasksImplCopyWithImpl(
      _$DeleteAllCompletedTasksImpl _value,
      $Res Function(_$DeleteAllCompletedTasksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteAllCompletedTasksImpl implements DeleteAllCompletedTasks {
  const _$DeleteAllCompletedTasksImpl();

  @override
  String toString() {
    return 'TodoImplEvent.deleteAllCompletedTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAllCompletedTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return deleteAllCompletedTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return deleteAllCompletedTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (deleteAllCompletedTasks != null) {
      return deleteAllCompletedTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return deleteAllCompletedTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return deleteAllCompletedTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (deleteAllCompletedTasks != null) {
      return deleteAllCompletedTasks(this);
    }
    return orElse();
  }
}

abstract class DeleteAllCompletedTasks implements TodoImplEvent {
  const factory DeleteAllCompletedTasks() = _$DeleteAllCompletedTasksImpl;
}

/// @nodoc
abstract class _$$RetreiveProjectsImplCopyWith<$Res> {
  factory _$$RetreiveProjectsImplCopyWith(_$RetreiveProjectsImpl value,
          $Res Function(_$RetreiveProjectsImpl) then) =
      __$$RetreiveProjectsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetreiveProjectsImplCopyWithImpl<$Res>
    extends _$TodoImplEventCopyWithImpl<$Res, _$RetreiveProjectsImpl>
    implements _$$RetreiveProjectsImplCopyWith<$Res> {
  __$$RetreiveProjectsImplCopyWithImpl(_$RetreiveProjectsImpl _value,
      $Res Function(_$RetreiveProjectsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RetreiveProjectsImpl implements RetreiveProjects {
  const _$RetreiveProjectsImpl();

  @override
  String toString() {
    return 'TodoImplEvent.retrieveProjects()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RetreiveProjectsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String requestId, String name) addProject,
    required TResult Function(
            String requestId, String content, String projectId)
        addTask,
    required TResult Function(String requestId, String taskId, String content)
        updateTask,
    required TResult Function(String requestId, String taskId) completeTask,
    required TResult Function(String requestId, String projectId) deleteProject,
    required TResult Function(List<RichTextItem> items) addCompletedTodos,
    required TResult Function(String id) deleteCompletedTask,
    required TResult Function() deleteAllCompletedTasks,
    required TResult Function() retrieveProjects,
  }) {
    return retrieveProjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String requestId, String name)? addProject,
    TResult? Function(String requestId, String content, String projectId)?
        addTask,
    TResult? Function(String requestId, String taskId, String content)?
        updateTask,
    TResult? Function(String requestId, String taskId)? completeTask,
    TResult? Function(String requestId, String projectId)? deleteProject,
    TResult? Function(List<RichTextItem> items)? addCompletedTodos,
    TResult? Function(String id)? deleteCompletedTask,
    TResult? Function()? deleteAllCompletedTasks,
    TResult? Function()? retrieveProjects,
  }) {
    return retrieveProjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String requestId, String name)? addProject,
    TResult Function(String requestId, String content, String projectId)?
        addTask,
    TResult Function(String requestId, String taskId, String content)?
        updateTask,
    TResult Function(String requestId, String taskId)? completeTask,
    TResult Function(String requestId, String projectId)? deleteProject,
    TResult Function(List<RichTextItem> items)? addCompletedTodos,
    TResult Function(String id)? deleteCompletedTask,
    TResult Function()? deleteAllCompletedTasks,
    TResult Function()? retrieveProjects,
    required TResult orElse(),
  }) {
    if (retrieveProjects != null) {
      return retrieveProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddProject value) addProject,
    required TResult Function(AddTask value) addTask,
    required TResult Function(UpdateTask value) updateTask,
    required TResult Function(CompleteTask value) completeTask,
    required TResult Function(DeleteProject value) deleteProject,
    required TResult Function(AddCompletedTodos value) addCompletedTodos,
    required TResult Function(DeleteCompletedTask value) deleteCompletedTask,
    required TResult Function(DeleteAllCompletedTasks value)
        deleteAllCompletedTasks,
    required TResult Function(RetreiveProjects value) retrieveProjects,
  }) {
    return retrieveProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddProject value)? addProject,
    TResult? Function(AddTask value)? addTask,
    TResult? Function(UpdateTask value)? updateTask,
    TResult? Function(CompleteTask value)? completeTask,
    TResult? Function(DeleteProject value)? deleteProject,
    TResult? Function(AddCompletedTodos value)? addCompletedTodos,
    TResult? Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult? Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult? Function(RetreiveProjects value)? retrieveProjects,
  }) {
    return retrieveProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddProject value)? addProject,
    TResult Function(AddTask value)? addTask,
    TResult Function(UpdateTask value)? updateTask,
    TResult Function(CompleteTask value)? completeTask,
    TResult Function(DeleteProject value)? deleteProject,
    TResult Function(AddCompletedTodos value)? addCompletedTodos,
    TResult Function(DeleteCompletedTask value)? deleteCompletedTask,
    TResult Function(DeleteAllCompletedTasks value)? deleteAllCompletedTasks,
    TResult Function(RetreiveProjects value)? retrieveProjects,
    required TResult orElse(),
  }) {
    if (retrieveProjects != null) {
      return retrieveProjects(this);
    }
    return orElse();
  }
}

abstract class RetreiveProjects implements TodoImplEvent {
  const factory RetreiveProjects() = _$RetreiveProjectsImpl;
}

/// @nodoc
mixin _$TodoImplState {
  ProcessingStatus get processingStatus => throw _privateConstructorUsedError;
  CustomError get error => throw _privateConstructorUsedError;
  List<RichTextItem> get completedTodos => throw _privateConstructorUsedError;
  List<ProjectResponse> get projects => throw _privateConstructorUsedError;
  String get currentProject => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoImplStateCopyWith<TodoImplState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoImplStateCopyWith<$Res> {
  factory $TodoImplStateCopyWith(
          TodoImplState value, $Res Function(TodoImplState) then) =
      _$TodoImplStateCopyWithImpl<$Res, TodoImplState>;
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      List<RichTextItem> completedTodos,
      List<ProjectResponse> projects,
      String currentProject});
}

/// @nodoc
class _$TodoImplStateCopyWithImpl<$Res, $Val extends TodoImplState>
    implements $TodoImplStateCopyWith<$Res> {
  _$TodoImplStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? completedTodos = null,
    Object? projects = null,
    Object? currentProject = null,
  }) {
    return _then(_value.copyWith(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
      completedTodos: null == completedTodos
          ? _value.completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as List<RichTextItem>,
      projects: null == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectResponse>,
      currentProject: null == currentProject
          ? _value.currentProject
          : currentProject // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoImplStateImplCopyWith<$Res>
    implements $TodoImplStateCopyWith<$Res> {
  factory _$$TodoImplStateImplCopyWith(
          _$TodoImplStateImpl value, $Res Function(_$TodoImplStateImpl) then) =
      __$$TodoImplStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProcessingStatus processingStatus,
      CustomError error,
      List<RichTextItem> completedTodos,
      List<ProjectResponse> projects,
      String currentProject});
}

/// @nodoc
class __$$TodoImplStateImplCopyWithImpl<$Res>
    extends _$TodoImplStateCopyWithImpl<$Res, _$TodoImplStateImpl>
    implements _$$TodoImplStateImplCopyWith<$Res> {
  __$$TodoImplStateImplCopyWithImpl(
      _$TodoImplStateImpl _value, $Res Function(_$TodoImplStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processingStatus = null,
    Object? error = null,
    Object? completedTodos = null,
    Object? projects = null,
    Object? currentProject = null,
  }) {
    return _then(_$TodoImplStateImpl(
      processingStatus: null == processingStatus
          ? _value.processingStatus
          : processingStatus // ignore: cast_nullable_to_non_nullable
              as ProcessingStatus,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
      completedTodos: null == completedTodos
          ? _value._completedTodos
          : completedTodos // ignore: cast_nullable_to_non_nullable
              as List<RichTextItem>,
      projects: null == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectResponse>,
      currentProject: null == currentProject
          ? _value.currentProject
          : currentProject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TodoImplStateImpl implements _TodoImplState {
  const _$TodoImplStateImpl(
      {required this.processingStatus,
      required this.error,
      required final List<RichTextItem> completedTodos,
      required final List<ProjectResponse> projects,
      required this.currentProject})
      : _completedTodos = completedTodos,
        _projects = projects;

  @override
  final ProcessingStatus processingStatus;
  @override
  final CustomError error;
  final List<RichTextItem> _completedTodos;
  @override
  List<RichTextItem> get completedTodos {
    if (_completedTodos is EqualUnmodifiableListView) return _completedTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedTodos);
  }

  final List<ProjectResponse> _projects;
  @override
  List<ProjectResponse> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  final String currentProject;

  @override
  String toString() {
    return 'TodoImplState(processingStatus: $processingStatus, error: $error, completedTodos: $completedTodos, projects: $projects, currentProject: $currentProject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImplStateImpl &&
            (identical(other.processingStatus, processingStatus) ||
                other.processingStatus == processingStatus) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._completedTodos, _completedTodos) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.currentProject, currentProject) ||
                other.currentProject == currentProject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      processingStatus,
      error,
      const DeepCollectionEquality().hash(_completedTodos),
      const DeepCollectionEquality().hash(_projects),
      currentProject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplStateImplCopyWith<_$TodoImplStateImpl> get copyWith =>
      __$$TodoImplStateImplCopyWithImpl<_$TodoImplStateImpl>(this, _$identity);
}

abstract class _TodoImplState implements TodoImplState {
  const factory _TodoImplState(
      {required final ProcessingStatus processingStatus,
      required final CustomError error,
      required final List<RichTextItem> completedTodos,
      required final List<ProjectResponse> projects,
      required final String currentProject}) = _$TodoImplStateImpl;

  @override
  ProcessingStatus get processingStatus;
  @override
  CustomError get error;
  @override
  List<RichTextItem> get completedTodos;
  @override
  List<ProjectResponse> get projects;
  @override
  String get currentProject;
  @override
  @JsonKey(ignore: true)
  _$$TodoImplStateImplCopyWith<_$TodoImplStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
