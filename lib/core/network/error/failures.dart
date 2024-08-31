// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:crypto_app/core/network/error/exceptions.dart';
import 'package:equatable/equatable.dart';

enum ErrorCode {
  UNPROCESSABLE,
  CONFLICT,
  NOT_FOUND,
  FORBIDDEN,
  SERVER,
  AUTH,
  NO_INTERNET_CONNECTION,
  TOO_MANY_REQUESTS,
  UNKNOWN
}

class Failure extends Equatable {
  final ErrorCode code;
  final String message;

  const Failure({required this.code, required this.message});

  factory Failure.fromException(dynamic exception) {
    final exceptionMap = {
      UnprocessableException: ErrorCode.UNPROCESSABLE,
      ConflictException: ErrorCode.CONFLICT,
      NotFoundException: ErrorCode.NOT_FOUND,
      ForbiddenException: ErrorCode.FORBIDDEN,
      ServerException: ErrorCode.SERVER,
      AuthException: ErrorCode.AUTH,
      NoInternetConnectionException: ErrorCode.NO_INTERNET_CONNECTION,
      SocketException: ErrorCode.NO_INTERNET_CONNECTION,
      TooManyRequestsException: ErrorCode.TOO_MANY_REQUESTS,
    };

    var errorCode = exceptionMap[exception.runtimeType] ?? ErrorCode.UNKNOWN;
    var errorMessage = (exception is CustomException) ? exception.message : "Unexpected error";

    return Failure(code: errorCode, message: errorMessage);
  }

  @override
  List<Object?> get props => [message];
}

class CustomException {
  final String message;

  CustomException(this.message);
}