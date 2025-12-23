import 'package:dartz/dartz.dart';
import 'package:example/core/usecase/base_usecase.dart';
import 'package:example/core/utils/errors/failure.dart';
import 'package:example/domain/entities/breed.dart';
import 'package:example/domain/repositories/breed_repository.dart';

class GetBreedUseCase extends UseCase<List<Breed>, NoParameters> {
  final BreedRepository repository;

  GetBreedUseCase(this.repository);

  @override
  Future<Either<Failure, List<Breed>>> call(NoParameters params) async {
    return await repository.getBreeds();
  }
}
