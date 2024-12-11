import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:uuid/uuid.dart';
import '../../core/shared/utilities/auth_incepters.dart';
import '../../core/shared/utilities/network_info.dart';
import '../../data/api/todoist_api.dart';
import '../../data/repository/todoist_repository.dart';
import '../../data/storage_services/secure_storage.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Uuid get uuid => const Uuid();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  NetworkInfoImpl get networkInfo => NetworkInfoImpl(
        connectivity: connectivity,
        internetConnectionChecker: internetConnectionChecker,
      );

  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  @lazySingleton
  SecureStorage get secureStorage => SecureStorage(storage);

  @lazySingleton
  Dio get dio {
    final dio = Dio();
    dio.interceptors.add(AuthInterceptor(secureStorage));
    return dio;
  }

  @lazySingleton
  TodoistApiServiceClient get todoistApiServiceClient =>
      TodoistApiServiceClient(dio);

  @lazySingleton
  TodoistRepositoryImpl get todoistRepository =>
      TodoistRepositoryImpl(todoistApiServiceClient);
}
