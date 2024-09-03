import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:crypto_app/core/network/error/exceptions.dart';
import 'package:dio/dio.dart';

// Mixin to handle errors
mixin ErrorHandling {

  // Function to handle default exceptions
  Exception defaultException(dynamic error, StackTrace? st) {
    log("Error: $error, StackTrace: $st");
    return error;
  }

  // Function to handle exceptions
  Exception handleException(dynamic error, {StackTrace? st}) {
    log("Error: $error, StackTrace: $st");
    if (error is Response) {
      return responseException(error);
    } else if (error is DioException) {
      return dioException(error);
    }
    return error;
  }
  
  // Function to handle response exceptions
  Exception responseException(Response response) {
    switch (response.statusCode) {
      case HttpStatus.forbidden:
        return ForbiddenException(message: response.data);
      case HttpStatus.notFound:
        return NotFoundException(message: response.data);
      case HttpStatus.unprocessableEntity:
        return UnprocessableException(message: response.data);
      case HttpStatus.conflict:
        return ConflictException(message: response.data);
      case HttpStatus.tooManyRequests:
        return const TooManyRequestsException(message: "Too many requests");
      case HttpStatus.internalServerError:
        return const ServerException(message: "Server not responding");
      case HttpStatus.unauthorized:
        return AuthException();
    }
    return ServerException(message: response.data);
  }

  // Function to handle Dio exceptions
  Exception dioException(DioException dio) {
    switch (dio.type) {
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.connectionError:
        {
          return NoInternetConnectionException();
        }
      case DioExceptionType.receiveTimeout:
        return const ServerException(message: "Server not responding");
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
      case DioExceptionType.cancel:
      case DioExceptionType.unknown:
        {
          if (dio is SocketException || dio is TimeoutException) {
            return NoInternetConnectionException();
          }
          final response = dio.response;
          if (response != null) {
            return responseException(response);
          }
          return const ServerException(message: "App not responding");
        }
    }
  }
}
