import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/blocs/network_info/network_info_bloc.dart';
import '../../application/blocs/todo_impl/todo_impl_bloc.dart';
import '../../core/dependency_injection/injection.dart';

class AppBlocProviders {
  static get allBlocProviders => [
        BlocProvider(create: (_) => getIt<NetworkInfoBloc>()),
        BlocProvider(create: (_) => getIt<TodoImplBloc>()),
      ];
}
