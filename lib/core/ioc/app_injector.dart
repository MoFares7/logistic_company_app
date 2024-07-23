import 'package:get_it/get_it.dart';


class AppInjector {
  final _injector = GetIt.instance;

  GetIt get inject => _injector;

  init() async {
    //! Cubit
    // _injector.registerLazySingleton<AuthCubit>(() => AuthCubit(
    //       _injector(),
    //     ));
    // _injector.registerLazySingleton<TaskCubit>(() => TaskCubit()); 
    // _injector.registerLazySingleton<TaskUserCubit>(() => TaskUserCubit(
    //       _injector(),
    //     ));

    //! repositories
    // _injector.registerLazySingleton<UserRepository>(
    //   () => UserRepositoryImpl(_injector()),
    // );  
    // _injector.registerLazySingleton<GetTaskUserRepository>(
    //   () => TaskUserRepositoryImpl(_injector()),
    // );

    //     //! use cases
    // _injector.registerLazySingleton(() => LoginUser(_injector()));
    // _injector.registerLazySingleton(() => GetTaskUsers(_injector()));
    
    //! apis
    // _injector.registerLazySingleton(() => UserApi());
    // _injector.registerLazySingleton(() => TaskUserApi());
  }
}
