// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i5;
import 'package:todo/application/blocs/network_info/network_info_bloc.dart'
    as _i13;
import 'package:todo/application/blocs/todo_impl/todo_impl_bloc.dart' as _i14;
import 'package:todo/core/shared/utilities/network_info.dart' as _i6;
import 'package:todo/data/api/todoist_api.dart' as _i10;
import 'package:todo/data/repository/todoist_repository.dart' as _i11;
import 'package:todo/data/storage_services/secure_storage.dart' as _i8;
import 'package:todo/domain/i_todoist_repository/i_todoist_repository.dart'
    as _i12;
import 'package:todo/infrastructure/di/injectable_module.dart' as _i15;
import 'package:uuid/uuid.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingleton<_i3.Uuid>(() => injectableModule.uuid);
    gh.lazySingleton<_i4.Connectivity>(() => injectableModule.connectivity);
    gh.lazySingleton<_i5.InternetConnectionChecker>(
        () => injectableModule.internetConnectionChecker);
    gh.lazySingleton<_i6.NetworkInfoImpl>(() => injectableModule.networkInfo);
    gh.lazySingleton<_i7.FlutterSecureStorage>(() => injectableModule.storage);
    gh.lazySingleton<_i8.SecureStorage>(() => injectableModule.secureStorage);
    gh.lazySingleton<_i9.Dio>(() => injectableModule.dio);
    gh.lazySingleton<_i10.TodoistApiServiceClient>(
        () => injectableModule.todoistApiServiceClient);
    gh.lazySingleton<_i11.TodoistRepositoryImpl>(
        () => injectableModule.todoistRepository);
    gh.lazySingleton<_i12.TodoistRepository>(
        () => _i11.TodoistRepositoryImpl(gh<_i10.TodoistApiServiceClient>()));
    gh.lazySingleton<_i6.NetworkInfo>(() => _i6.NetworkInfoImpl(
          connectivity: gh<_i4.Connectivity>(),
          internetConnectionChecker: gh<_i5.InternetConnectionChecker>(),
        ));
    gh.factory<_i13.NetworkInfoBloc>(() => _i13.NetworkInfoBloc(
          networkInfo: gh<_i6.NetworkInfo>(),
          connectivity: gh<_i4.Connectivity>(),
        ));
    gh.factory<_i14.TodoImplBloc>(() =>
        _i14.TodoImplBloc(todoistRepository: gh<_i12.TodoistRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i15.InjectableModule {}
