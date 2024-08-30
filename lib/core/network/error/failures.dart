
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

abstract class Failure extends Equatable {
  const Failure();

  String? get message;
}


@freezed
class ApiFailure extends Failure with _$ApiFailure {
  const factory ApiFailure({required String message}) = _ApiFailure;

  const ApiFailure._();

  @override
  List<Object?> get props => [message];
}

@freezed
class ParseFailure extends Failure with _$ParseFailure {
  const factory ParseFailure.typeFailure({StackTrace? stackTrace}) =
      TypeFailure;

  const ParseFailure._();

  @override
  String? get message => null;

  @override
  List<Object?> get props => [message];
}

@freezed
class UnknownFailure extends Failure with _$UnknownFailure {
  const factory UnknownFailure.undefined({String? message}) = _UnknownFailure;

  const UnknownFailure._();

  @override
  String? get message => null;

  @override
  List<Object?> get props => [message];
}
