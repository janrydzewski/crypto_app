// ignore_for_file: unused_field

import 'dart:io';

import 'package:crypto_app/core/constants/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:crypto_app/core/network/error_handling.dart';

abstract class DioFactory with ErrorHandling {
  abstract Dio _dio;

  Dio getDio({
    String? baseUrl,
    Map<String, dynamic>? headers,
  });

  Future<Map<String, dynamic>> get(String route,
      {Map<String, dynamic>? queryParameters});
  Future<List<dynamic>> getList(String route,
      {Map<String, dynamic>? queryParameters});
}

@LazySingleton(as: DioFactory)
class DioFactoryImpl extends DioFactory {
  @override
  late Dio _dio = getDio();

  DioFactoryImpl();
  
  // Function to get the Dio instance
  @override
  Dio getDio({String? baseUrl, Map<String, dynamic>? headers}) =>
      Dio(BaseOptions(
          baseUrl: baseUrl ?? ApiRoutesK.baseUrl,
          contentType: 'application/json',
          responseType: ResponseType.json,
          connectTimeout: const Duration(seconds: 480),
          sendTimeout: const Duration(seconds: 480),
          headers: headers ?? {
            'x-cg-demo-api-key': dotenv.env['API_KEY'],
          },
          validateStatus: (int? status) =>
              status! >= HttpStatus.ok && status <= HttpStatus.imUsed))
        ..interceptors.addAll([]);

  
  @override
  Future<Map<String, dynamic>> get(
    String route, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final result = await _dio.get(
        route,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return result.data;
    } catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<List<dynamic>> getList(
    String route, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async {
    try {
      final result = await _dio.get(
        route,
        queryParameters: queryParameters,
        options: Options(headers: headers),
      );

      return result.data;
    } catch (e) {
      throw handleException(e);
    }
  }
}
