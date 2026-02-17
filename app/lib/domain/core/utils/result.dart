import 'dart:async';

import 'package:template/domain/domain.dart';

sealed class Result<T> {
  const Result();

  const factory Result.ok(T value) = Ok._;

  const factory Result.failure(AppException exception) = Failure._;

  T? get valueOrNull => switch (this) {
        final Ok<T> ok => ok.value,
        Failure<T>() => null,
      };

  T valueOr(T fallbackValue) => switch (this) {
        final Ok<T> ok => ok.value,
        Failure<T>() => fallbackValue,
      };
}

final class Ok<T> extends Result<T> {
  const Ok._(this.value);

  final T value;

  @override
  String toString() => 'Result<$T>.ok($value)';
}

final class Failure<T> extends Result<T> {
  const Failure._(this.exception);

  final AppException exception;

  @override
  String toString() => 'Result<$T>.failure($exception)';
}

extension PipeResultX<T> on FutureOr<Result<T>> {
  FutureOr<Result<K>> pipe<K>(
    FutureOr<Result<K>> Function(T value) callback,
  ) async {
    final result = await this;
    switch (result) {
      case final Failure<T> failure:
        return Result.failure(failure.exception);
      case final Ok<T> ok:
        return await callback(ok.value);
    }
  }
}
