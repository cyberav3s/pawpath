import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:example/core/utils/errors/failure.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P p);
}

abstract class StreamUseCase<T, P> {
  Stream<T> call(P p);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object?> get props => [];
}

