part of 'network_info_bloc.dart';

@freezed
class NetworkInfoEvent with _$NetworkInfoEvent {
  const factory NetworkInfoEvent.checkNetwork() = CheckNetwork;
}
