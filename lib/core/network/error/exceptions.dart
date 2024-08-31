class AuthException implements Exception {}

class StorageException implements Exception {}

class NoInternetConnectionException implements Exception {}

class TooManyRequestsException implements Exception {
  final String message;

  const TooManyRequestsException({required this.message});
}

class ServerException implements Exception {
  final String message;

  const ServerException({required this.message});
}

class UnprocessableException implements Exception {
  final String message;

  UnprocessableException({required this.message});
}

class ForbiddenException implements Exception {
  final String message;

  ForbiddenException({required this.message});
}

class ConflictException implements Exception {
  final String message;

  ConflictException({required this.message});
}

class NotFoundException implements Exception {
  final String message;

  NotFoundException({required this.message});
}

class InternalServerException implements Exception {
  final String message;

  InternalServerException({required this.message});
}
