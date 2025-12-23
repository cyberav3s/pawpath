import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:example/core/usecase/base_usecase.dart';
import 'package:example/domain/entities/breed.dart';
import 'package:example/domain/usecases/breed_usecase.dart';

part 'breed_event.dart';
part 'breed_state.dart';

class BreedBloc extends Bloc<BreedEvent, BreedState> {
  final GetBreedUseCase _getBreedUseCase;
  BreedBloc(this._getBreedUseCase) : super(const BreedState()) {
    on<GetBreedsEvent>(_getBreeds);
  }

  Future<void> _getBreeds(
    GetBreedsEvent event,
    Emitter<BreedState> emit,
  ) async {
    emit(state.copyWith(status: RequestStatus.loading));
    final res = await _getBreedUseCase.call(NoParameters());

    res.fold(
      (error) => emit(
        state.copyWith(status: RequestStatus.error, message: error.message),
      ),
      (breeds) async =>
          emit(state.copyWith(status: RequestStatus.success, breeds: breeds)),
    );
  }
}
