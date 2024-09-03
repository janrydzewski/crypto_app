// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_list_param_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoListParamEntity _$CryptoListParamEntityFromJson(
    Map<String, dynamic> json) {
  return _CryptoListParamEntity.fromJson(json);
}

/// @nodoc
mixin _$CryptoListParamEntity {
  @JsonKey(name: 'per_page')
  int get pageSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get pageKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'vs_currency')
  String get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoListParamEntityCopyWith<CryptoListParamEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoListParamEntityCopyWith<$Res> {
  factory $CryptoListParamEntityCopyWith(CryptoListParamEntity value,
          $Res Function(CryptoListParamEntity) then) =
      _$CryptoListParamEntityCopyWithImpl<$Res, CryptoListParamEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'per_page') int pageSize,
      @JsonKey(name: 'page') int pageKey,
      @JsonKey(name: 'vs_currency') String currencyCode});
}

/// @nodoc
class _$CryptoListParamEntityCopyWithImpl<$Res,
        $Val extends CryptoListParamEntity>
    implements $CryptoListParamEntityCopyWith<$Res> {
  _$CryptoListParamEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
    Object? pageKey = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoListParamEntityImplCopyWith<$Res>
    implements $CryptoListParamEntityCopyWith<$Res> {
  factory _$$CryptoListParamEntityImplCopyWith(
          _$CryptoListParamEntityImpl value,
          $Res Function(_$CryptoListParamEntityImpl) then) =
      __$$CryptoListParamEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'per_page') int pageSize,
      @JsonKey(name: 'page') int pageKey,
      @JsonKey(name: 'vs_currency') String currencyCode});
}

/// @nodoc
class __$$CryptoListParamEntityImplCopyWithImpl<$Res>
    extends _$CryptoListParamEntityCopyWithImpl<$Res,
        _$CryptoListParamEntityImpl>
    implements _$$CryptoListParamEntityImplCopyWith<$Res> {
  __$$CryptoListParamEntityImplCopyWithImpl(_$CryptoListParamEntityImpl _value,
      $Res Function(_$CryptoListParamEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
    Object? pageKey = null,
    Object? currencyCode = null,
  }) {
    return _then(_$CryptoListParamEntityImpl(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoListParamEntityImpl implements _CryptoListParamEntity {
  _$CryptoListParamEntityImpl(
      {@JsonKey(name: 'per_page') this.pageSize = 25,
      @JsonKey(name: 'page') required this.pageKey,
      @JsonKey(name: 'vs_currency') required this.currencyCode});

  factory _$CryptoListParamEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoListParamEntityImplFromJson(json);

  @override
  @JsonKey(name: 'per_page')
  final int pageSize;
  @override
  @JsonKey(name: 'page')
  final int pageKey;
  @override
  @JsonKey(name: 'vs_currency')
  final String currencyCode;

  @override
  String toString() {
    return 'CryptoListParamEntity(pageSize: $pageSize, pageKey: $pageKey, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoListParamEntityImpl &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pageSize, pageKey, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoListParamEntityImplCopyWith<_$CryptoListParamEntityImpl>
      get copyWith => __$$CryptoListParamEntityImplCopyWithImpl<
          _$CryptoListParamEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoListParamEntityImplToJson(
      this,
    );
  }
}

abstract class _CryptoListParamEntity implements CryptoListParamEntity {
  factory _CryptoListParamEntity(
          {@JsonKey(name: 'per_page') final int pageSize,
          @JsonKey(name: 'page') required final int pageKey,
          @JsonKey(name: 'vs_currency') required final String currencyCode}) =
      _$CryptoListParamEntityImpl;

  factory _CryptoListParamEntity.fromJson(Map<String, dynamic> json) =
      _$CryptoListParamEntityImpl.fromJson;

  @override
  @JsonKey(name: 'per_page')
  int get pageSize;
  @override
  @JsonKey(name: 'page')
  int get pageKey;
  @override
  @JsonKey(name: 'vs_currency')
  String get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$CryptoListParamEntityImplCopyWith<_$CryptoListParamEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
