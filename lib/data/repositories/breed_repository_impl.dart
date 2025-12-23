import 'package:dartz/dartz.dart';
import 'package:example/core/utils/errors/failure.dart';
import 'package:example/data/source/breed_remote_data_source.dart';
import 'package:example/domain/entities/breed.dart';
import 'package:example/domain/repositories/breed_repository.dart';

class BreedRepositoryImpl implements BreedRepository {
  final BreedRemoteDataSource remoteDataSource;

  BreedRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, List<Breed>>> getBreeds() async {
    try {
      final breeds = await remoteDataSource.getBreeds();
      return Future.value(Right(breeds));
    } catch (e) {
      return Future.value(Left(ServerFailure(e.toString())));
    }
  }
}
