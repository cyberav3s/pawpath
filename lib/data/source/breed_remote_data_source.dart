import 'package:dio/dio.dart';
import 'package:example/core/network/api_constants.dart';
import 'package:example/core/utils/errors/error_model.dart';
import 'package:example/core/utils/errors/exceptions.dart';
import 'package:example/data/models/breed.dart';

abstract class BreedRemoteDataSource {
  Future<List<BreedModel>> getBreeds();
}

class BreedRemoteDataSourceImpl implements BreedRemoteDataSource {
  final Dio client;

  BreedRemoteDataSourceImpl({required this.client});

  @override
  Future<List<BreedModel>> getBreeds() async {
    final response = await client.get(ApiConstants.getBreeds);
    if (response.statusCode == 200) {
      return List<BreedModel>.from(
        (response.data as List).map((e) => BreedModel.fromJson(e)),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
