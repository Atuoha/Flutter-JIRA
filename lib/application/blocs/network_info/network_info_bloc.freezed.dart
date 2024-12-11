// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkInfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckNetwork value) checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckNetwork value)? checkNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckNetwork value)? checkNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkInfoEventCopyWith<$Res> {
  factory $NetworkInfoEventCopyWith(
          NetworkInfoEvent value, $Res Function(NetworkInfoEvent) then) =
      _$NetworkInfoEventCopyWithImpl<$Res, NetworkInfoEvent>;
}

/// @nodoc
class _$NetworkInfoEventCopyWithImpl<$Res, $Val extends NetworkInfoEvent>
    implements $NetworkInfoEventCopyWith<$Res> {
  _$NetworkInfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckNetworkImplCopyWith<$Res> {
  factory _$$CheckNetworkImplCopyWith(
          _$CheckNetworkImpl value, $Res Function(_$CheckNetworkImpl) then) =
      __$$CheckNetworkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckNetworkImplCopyWithImpl<$Res>
    extends _$NetworkInfoEventCopyWithImpl<$Res, _$CheckNetworkImpl>
    implements _$$CheckNetworkImplCopyWith<$Res> {
  __$$CheckNetworkImplCopyWithImpl(
      _$CheckNetworkImpl _value, $Res Function(_$CheckNetworkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckNetworkImpl implements CheckNetwork {
  const _$CheckNetworkImpl();

  @override
  String toString() {
    return 'NetworkInfoEvent.checkNetwork()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckNetworkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkNetwork,
  }) {
    return checkNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkNetwork,
  }) {
    return checkNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkNetwork,
    required TResult orElse(),
  }) {
    if (checkNetwork != null) {
      return checkNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckNetwork value) checkNetwork,
  }) {
    return checkNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckNetwork value)? checkNetwork,
  }) {
    return checkNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckNetwork value)? checkNetwork,
    required TResult orElse(),
  }) {
    if (checkNetwork != null) {
      return checkNetwork(this);
    }
    return orElse();
  }
}

abstract class CheckNetwork implements NetworkInfoEvent {
  const factory CheckNetwork() = _$CheckNetworkImpl;
}

/// @nodoc
mixin _$NetworkInfoState {
  bool get networkStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkInfoStateCopyWith<NetworkInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkInfoStateCopyWith<$Res> {
  factory $NetworkInfoStateCopyWith(
          NetworkInfoState value, $Res Function(NetworkInfoState) then) =
      _$NetworkInfoStateCopyWithImpl<$Res, NetworkInfoState>;
  @useResult
  $Res call({bool networkStatus});
}

/// @nodoc
class _$NetworkInfoStateCopyWithImpl<$Res, $Val extends NetworkInfoState>
    implements $NetworkInfoStateCopyWith<$Res> {
  _$NetworkInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
  }) {
    return _then(_value.copyWith(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkInfoStateImplCopyWith<$Res>
    implements $NetworkInfoStateCopyWith<$Res> {
  factory _$$NetworkInfoStateImplCopyWith(_$NetworkInfoStateImpl value,
          $Res Function(_$NetworkInfoStateImpl) then) =
      __$$NetworkInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool networkStatus});
}

/// @nodoc
class __$$NetworkInfoStateImplCopyWithImpl<$Res>
    extends _$NetworkInfoStateCopyWithImpl<$Res, _$NetworkInfoStateImpl>
    implements _$$NetworkInfoStateImplCopyWith<$Res> {
  __$$NetworkInfoStateImplCopyWithImpl(_$NetworkInfoStateImpl _value,
      $Res Function(_$NetworkInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
  }) {
    return _then(_$NetworkInfoStateImpl(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NetworkInfoStateImpl implements _NetworkInfoState {
  const _$NetworkInfoStateImpl({required this.networkStatus});

  @override
  final bool networkStatus;

  @override
  String toString() {
    return 'NetworkInfoState(networkStatus: $networkStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkInfoStateImpl &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, networkStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkInfoStateImplCopyWith<_$NetworkInfoStateImpl> get copyWith =>
      __$$NetworkInfoStateImplCopyWithImpl<_$NetworkInfoStateImpl>(
          this, _$identity);
}

abstract class _NetworkInfoState implements NetworkInfoState {
  const factory _NetworkInfoState({required final bool networkStatus}) =
      _$NetworkInfoStateImpl;

  @override
  bool get networkStatus;
  @override
  @JsonKey(ignore: true)
  _$$NetworkInfoStateImplCopyWith<_$NetworkInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
