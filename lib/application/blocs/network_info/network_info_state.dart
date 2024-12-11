part of 'network_info_bloc.dart';

@freezed
class NetworkInfoState with _$NetworkInfoState {
  const factory NetworkInfoState({required bool networkStatus}) = _NetworkInfoState;

  factory NetworkInfoState.initial() => const NetworkInfoState(
    networkStatus: true,
  );
}
