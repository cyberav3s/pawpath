import 'package:dio/dio.dart';
import 'package:example/data/repositories/breed_repository_impl.dart';
import 'package:example/data/source/breed_remote_data_source.dart';
import 'package:example/domain/repositories/breed_repository.dart';
import 'package:example/domain/usecases/breed_usecase.dart';
import 'package:example/presentation/bloc/breed_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    _registerPackages();
    _registerSource();
    _registerRepositories();
    _registerUseCase();
    _registerBloc();
  }

  // Other
  static void _registerPackages() {
    sl.registerFactory<Dio>(() => Dio());
  }

  // Repositories
  static void _registerRepositories() {
    sl.registerFactory<BreedRepository>(
      () => BreedRepositoryImpl(remoteDataSource: sl()),
    );
  }

  // Soureces
  static void _registerSource() {
    sl.registerFactory<BreedRemoteDataSource>(
      () => BreedRemoteDataSourceImpl(client: sl()),
    );
  }

  // UseCases
  static void _registerUseCase() {
    sl.registerLazySingleton(() => GetBreedUseCase(sl()));
  }

  // Bloc
  static void _registerBloc() {
    sl.registerLazySingleton(() => BreedBloc(sl()));
  }
}
