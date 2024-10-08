// Mocks generated by Mockito 5.4.4 from annotations
// in crypto_app/test/features/crypto_details/details_datasource_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:crypto_app/core/network/dio_factory.dart' as _i3;
import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDio_0 extends _i1.SmartFake implements _i2.Dio {
  _FakeDio_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeException_1 extends _i1.SmartFake implements Exception {
  _FakeException_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [DioFactory].
///
/// See the documentation for Mockito's code generation for more information.
class MockDioFactory extends _i1.Mock implements _i3.DioFactory {
  MockDioFactory() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Dio getDio({
    String? baseUrl,
    Map<String, dynamic>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getDio,
          [],
          {
            #baseUrl: baseUrl,
            #headers: headers,
          },
        ),
        returnValue: _FakeDio_0(
          this,
          Invocation.method(
            #getDio,
            [],
            {
              #baseUrl: baseUrl,
              #headers: headers,
            },
          ),
        ),
      ) as _i2.Dio);

  @override
  _i4.Future<Map<String, dynamic>> get(
    String? route, {
    Map<String, dynamic>? queryParameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [route],
          {#queryParameters: queryParameters},
        ),
        returnValue:
            _i4.Future<Map<String, dynamic>>.value(<String, dynamic>{}),
      ) as _i4.Future<Map<String, dynamic>>);

  @override
  _i4.Future<List<dynamic>> getList(
    String? route, {
    Map<String, dynamic>? queryParameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getList,
          [route],
          {#queryParameters: queryParameters},
        ),
        returnValue: _i4.Future<List<dynamic>>.value(<dynamic>[]),
      ) as _i4.Future<List<dynamic>>);

  @override
  Exception defaultException(
    dynamic error,
    StackTrace? st,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #defaultException,
          [
            error,
            st,
          ],
        ),
        returnValue: _FakeException_1(
          this,
          Invocation.method(
            #defaultException,
            [
              error,
              st,
            ],
          ),
        ),
      ) as Exception);

  @override
  Exception handleException(
    dynamic error, {
    StackTrace? st,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #handleException,
          [error],
          {#st: st},
        ),
        returnValue: _FakeException_1(
          this,
          Invocation.method(
            #handleException,
            [error],
            {#st: st},
          ),
        ),
      ) as Exception);

  @override
  Exception responseException(_i2.Response<dynamic>? response) =>
      (super.noSuchMethod(
        Invocation.method(
          #responseException,
          [response],
        ),
        returnValue: _FakeException_1(
          this,
          Invocation.method(
            #responseException,
            [response],
          ),
        ),
      ) as Exception);

  @override
  Exception dioException(_i2.DioException? dio) => (super.noSuchMethod(
        Invocation.method(
          #dioException,
          [dio],
        ),
        returnValue: _FakeException_1(
          this,
          Invocation.method(
            #dioException,
            [dio],
          ),
        ),
      ) as Exception);
}
