import 'package:dartz/dartz.dart';
import 'package:example/core/utils/errors/failure.dart';
import 'package:example/domain/entities/breed.dart';

abstract class BreedRepository {
  Future<Either<Failure, List<Breed>>> getBreeds();
}
