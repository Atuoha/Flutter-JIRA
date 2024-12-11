// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashItem {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashItemCopyWith<SplashItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashItemCopyWith<$Res> {
  factory $SplashItemCopyWith(
          SplashItem value, $Res Function(SplashItem) then) =
      _$SplashItemCopyWithImpl<$Res, SplashItem>;
  @useResult
  $Res call({int id, String title, String description, String imgUrl});
}

/// @nodoc
class _$SplashItemCopyWithImpl<$Res, $Val extends SplashItem>
    implements $SplashItemCopyWith<$Res> {
  _$SplashItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imgUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashItemImplCopyWith<$Res>
    implements $SplashItemCopyWith<$Res> {
  factory _$$SplashItemImplCopyWith(
          _$SplashItemImpl value, $Res Function(_$SplashItemImpl) then) =
      __$$SplashItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description, String imgUrl});
}

/// @nodoc
class __$$SplashItemImplCopyWithImpl<$Res>
    extends _$SplashItemCopyWithImpl<$Res, _$SplashItemImpl>
    implements _$$SplashItemImplCopyWith<$Res> {
  __$$SplashItemImplCopyWithImpl(
      _$SplashItemImpl _value, $Res Function(_$SplashItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? imgUrl = null,
  }) {
    return _then(_$SplashItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SplashItemImpl implements _SplashItem {
  const _$SplashItemImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.imgUrl});

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imgUrl;

  @override
  String toString() {
    return 'SplashItem(id: $id, title: $title, description: $description, imgUrl: $imgUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, imgUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashItemImplCopyWith<_$SplashItemImpl> get copyWith =>
      __$$SplashItemImplCopyWithImpl<_$SplashItemImpl>(this, _$identity);
}

abstract class _SplashItem implements SplashItem {
  const factory _SplashItem(
      {required final int id,
      required final String title,
      required final String description,
      required final String imgUrl}) = _$SplashItemImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get imgUrl;
  @override
  @JsonKey(ignore: true)
  _$$SplashItemImplCopyWith<_$SplashItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
