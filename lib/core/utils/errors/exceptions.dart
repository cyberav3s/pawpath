import 'package:example/core/utils/errors/error_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  const ServerException({required this.errorMessageModel});
}


class DatabaseException implements Exception {
  final String message;
  DatabaseException({required this.message});

  @override
  String toString() => message;
}