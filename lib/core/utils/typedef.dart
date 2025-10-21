import 'package:dartz/dartz.dart';
import '../error/failures.dart';

/// Type definition for result with Either pattern
/// Left: Failure, Right: Success data
typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = ResultFuture<void>;

