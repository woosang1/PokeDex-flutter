import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// Base Failure class using Freezed for type-safe error handling
@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory Failure.network({
    required String message,
  }) = NetworkFailure;

  const factory Failure.cache({
    required String message,
  }) = CacheFailure;

  const factory Failure.notFound({
    required String message,
  }) = NotFoundFailure;

  const factory Failure.unknown({
    required String message,
  }) = UnknownFailure;
}

