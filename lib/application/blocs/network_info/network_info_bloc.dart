import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import '../../../core/shared/utilities/network_info.dart';

part 'network_info_event.dart';

part 'network_info_state.dart';

part 'network_info_bloc.freezed.dart';

@injectable
class NetworkInfoBloc extends Bloc<NetworkInfoEvent, NetworkInfoState> {
  final NetworkInfo networkInfo;
  final Connectivity connectivity;
  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  NetworkInfoBloc({
    required this.networkInfo,
    required this.connectivity,
  }) : super(NetworkInfoState.initial()) {
    EventTransformer<T> debounce<T>(Duration duration) {
      return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
    }

    // Use debounce for the CheckNetwork event
    on<CheckNetwork>(
      _onCheckNetwork,
      transformer: debounce(
        const Duration(seconds: 2),
      ),
    );

    connectivitySubscription = connectivity.onConnectivityChanged.listen((connectivityResult) async {
      await Future.delayed(const Duration(seconds: 1)); // Small delay
      debugPrint('Connectivity Result after delay: $connectivityResult');
      add(const CheckNetwork());
    });
  }

  // Handle network status checks and emit the corresponding state
  Future<void> _onCheckNetwork(
    CheckNetwork event,
    Emitter<NetworkInfoState> emit,
  ) async {
    final isConnected = await networkInfo.isConnected;
    if (state.networkStatus != isConnected) {
      emit(state.copyWith(networkStatus: isConnected));
    }
    debugPrint(
        'Network Status ==> ${isConnected ? "Data connection is available." : "You are disconnected from the internet."}');
  }

  @override
  Future<void> close() {
    connectivitySubscription.cancel();
    return super.close();
  }
}
