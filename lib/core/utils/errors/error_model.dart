import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {

  const ErrorMessageModel({
    required this.statusCode,
    required this.statusMessage,
    required this.success,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
      statusCode: json['status_code'] as int,
      statusMessage: json['status_message'] as String,
      success: json['success'] as bool,
    );
  }
  final int statusCode;
  final String statusMessage;
  final bool success;

  @override
  List<Object?> get props => [
        statusCode,
        statusMessage,
        success,
      ];
}
