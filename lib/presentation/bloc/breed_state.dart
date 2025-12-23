part of 'breed_bloc.dart';

enum RequestStatus { loading, success, error }

class BreedState extends Equatable {
  final List<Breed> breeds;
  final RequestStatus status;
  final String message;

  const BreedState({
    this.breeds = const [],
    this.status = RequestStatus.loading,
    this.message = '',
  });

  BreedState copyWith({
    List<Breed>? breeds,
    RequestStatus? status,
    String? message,
  }) {
    return BreedState(
      breeds: breeds ?? this.breeds,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [breeds, status, message];
}
