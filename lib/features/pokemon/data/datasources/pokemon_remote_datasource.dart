import 'package:dio/dio.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../models/pokemon_model.dart';

/// Remote data source for Pokemon API
/// Handles all network requests related to Pokemon
abstract class PokemonRemoteDataSource {
  Future<PokemonListResponseModel> getPokemonList({
    required int offset,
    required int limit,
  });

  Future<PokemonModel> getPokemonById(int id);

  Future<PokemonModel> getPokemonByName(String name);
}

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final DioClient dioClient;

  const PokemonRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<PokemonListResponseModel> getPokemonList({
    required int offset,
    required int limit,
  }) async {
    try {
      final response = await dioClient.get(
        '/pokemon',
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
      );

      return PokemonListResponseModel.fromJson(
        response.data as Map<String, dynamic>,
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw const NetworkException(
          message: 'Connection timeout. Please check your internet connection.',
        );
      } else if (e.type == DioExceptionType.connectionError) {
        throw const NetworkException(
          message: 'No internet connection. Please check your network.',
        );
      } else if (e.response != null) {
        throw ServerException(
          message: e.response?.data['message'] ?? 'Server error occurred',
          statusCode: e.response?.statusCode,
        );
      } else {
        throw ServerException(
          message: e.message ?? 'Unknown error occurred',
        );
      }
    } catch (e) {
      throw ServerException(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<PokemonModel> getPokemonById(int id) async {
    try {
      final response = await dioClient.get('/pokemon/$id');

      return PokemonModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw const NetworkException(
          message: 'Connection timeout. Please check your internet connection.',
        );
      } else if (e.type == DioExceptionType.connectionError) {
        throw const NetworkException(
          message: 'No internet connection. Please check your network.',
        );
      } else if (e.response != null) {
        throw ServerException(
          message: e.response?.data['message'] ?? 'Server error occurred',
          statusCode: e.response?.statusCode,
        );
      } else {
        throw ServerException(
          message: e.message ?? 'Unknown error occurred',
        );
      }
    } catch (e) {
      throw ServerException(message: 'Unexpected error: $e');
    }
  }

  @override
  Future<PokemonModel> getPokemonByName(String name) async {
    try {
      final response = await dioClient.get('/pokemon/$name');

      return PokemonModel.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw const NetworkException(
          message: 'Connection timeout. Please check your internet connection.',
        );
      } else if (e.type == DioExceptionType.connectionError) {
        throw const NetworkException(
          message: 'No internet connection. Please check your network.',
        );
      } else if (e.response != null) {
        throw ServerException(
          message: e.response?.data['message'] ?? 'Server error occurred',
          statusCode: e.response?.statusCode,
        );
      } else {
        throw ServerException(
          message: e.message ?? 'Unknown error occurred',
        );
      }
    } catch (e) {
      throw ServerException(message: 'Unexpected error: $e');
    }
  }
}

