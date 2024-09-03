// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrencyEntity _$CurrencyEntityFromJson(Map<String, dynamic> json) {
  return _CurrencyEntity.fromJson(json);
}

/// @nodoc
mixin _$CurrencyEntity {
  String get code => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  double get currencyRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyEntityCopyWith<CurrencyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEntityCopyWith<$Res> {
  factory $CurrencyEntityCopyWith(
          CurrencyEntity value, $Res Function(CurrencyEntity) then) =
      _$CurrencyEntityCopyWithImpl<$Res, CurrencyEntity>;
  @useResult
  $Res call({String code, String symbol, double currencyRate});
}

/// @nodoc
class _$CurrencyEntityCopyWithImpl<$Res, $Val extends CurrencyEntity>
    implements $CurrencyEntityCopyWith<$Res> {
  _$CurrencyEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? currencyRate = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      currencyRate: null == currencyRate
          ? _value.currencyRate
          : currencyRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyEntityImplCopyWith<$Res>
    implements $CurrencyEntityCopyWith<$Res> {
  factory _$$CurrencyEntityImplCopyWith(_$CurrencyEntityImpl value,
          $Res Function(_$CurrencyEntityImpl) then) =
      __$$CurrencyEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String symbol, double currencyRate});
}

/// @nodoc
class __$$CurrencyEntityImplCopyWithImpl<$Res>
    extends _$CurrencyEntityCopyWithImpl<$Res, _$CurrencyEntityImpl>
    implements _$$CurrencyEntityImplCopyWith<$Res> {
  __$$CurrencyEntityImplCopyWithImpl(
      _$CurrencyEntityImpl _value, $Res Function(_$CurrencyEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? symbol = null,
    Object? currencyRate = null,
  }) {
    return _then(_$CurrencyEntityImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      currencyRate: null == currencyRate
          ? _value.currencyRate
          : currencyRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyEntityImpl implements _CurrencyEntity {
  _$CurrencyEntityImpl(
      {required this.code, required this.symbol, required this.currencyRate});

  factory _$CurrencyEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyEntityImplFromJson(json);

  @override
  final String code;
  @override
  final String symbol;
  @override
  final double currencyRate;

  @override
  String toString() {
    return 'CurrencyEntity(code: $code, symbol: $symbol, currencyRate: $currencyRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyEntityImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.currencyRate, currencyRate) ||
                other.currencyRate == currencyRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, symbol, currencyRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyEntityImplCopyWith<_$CurrencyEntityImpl> get copyWith =>
      __$$CurrencyEntityImplCopyWithImpl<_$CurrencyEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyEntityImplToJson(
      this,
    );
  }
}

abstract class _CurrencyEntity implements CurrencyEntity {
  factory _CurrencyEntity(
      {required final String code,
      required final String symbol,
      required final double currencyRate}) = _$CurrencyEntityImpl;

  factory _CurrencyEntity.fromJson(Map<String, dynamic> json) =
      _$CurrencyEntityImpl.fromJson;

  @override
  String get code;
  @override
  String get symbol;
  @override
  double get currencyRate;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyEntityImplCopyWith<_$CurrencyEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
