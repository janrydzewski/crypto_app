// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChartDataEntity _$ChartDataEntityFromJson(Map<String, dynamic> json) {
  return _ChartDataEntity.fromJson(json);
}

/// @nodoc
mixin _$ChartDataEntity {
  int get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'vs_currency')
  String get currencyCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartDataEntityCopyWith<ChartDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartDataEntityCopyWith<$Res> {
  factory $ChartDataEntityCopyWith(
          ChartDataEntity value, $Res Function(ChartDataEntity) then) =
      _$ChartDataEntityCopyWithImpl<$Res, ChartDataEntity>;
  @useResult
  $Res call({int days, @JsonKey(name: 'vs_currency') String currencyCode});
}

/// @nodoc
class _$ChartDataEntityCopyWithImpl<$Res, $Val extends ChartDataEntity>
    implements $ChartDataEntityCopyWith<$Res> {
  _$ChartDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartDataEntityImplCopyWith<$Res>
    implements $ChartDataEntityCopyWith<$Res> {
  factory _$$ChartDataEntityImplCopyWith(_$ChartDataEntityImpl value,
          $Res Function(_$ChartDataEntityImpl) then) =
      __$$ChartDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int days, @JsonKey(name: 'vs_currency') String currencyCode});
}

/// @nodoc
class __$$ChartDataEntityImplCopyWithImpl<$Res>
    extends _$ChartDataEntityCopyWithImpl<$Res, _$ChartDataEntityImpl>
    implements _$$ChartDataEntityImplCopyWith<$Res> {
  __$$ChartDataEntityImplCopyWithImpl(
      _$ChartDataEntityImpl _value, $Res Function(_$ChartDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? currencyCode = null,
  }) {
    return _then(_$ChartDataEntityImpl(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
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
class _$ChartDataEntityImpl implements _ChartDataEntity {
  _$ChartDataEntityImpl(
      {required this.days,
      @JsonKey(name: 'vs_currency') required this.currencyCode});

  factory _$ChartDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartDataEntityImplFromJson(json);

  @override
  final int days;
  @override
  @JsonKey(name: 'vs_currency')
  final String currencyCode;

  @override
  String toString() {
    return 'ChartDataEntity(days: $days, currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartDataEntityImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, days, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartDataEntityImplCopyWith<_$ChartDataEntityImpl> get copyWith =>
      __$$ChartDataEntityImplCopyWithImpl<_$ChartDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartDataEntityImplToJson(
      this,
    );
  }
}

abstract class _ChartDataEntity implements ChartDataEntity {
  factory _ChartDataEntity(
          {required final int days,
          @JsonKey(name: 'vs_currency') required final String currencyCode}) =
      _$ChartDataEntityImpl;

  factory _ChartDataEntity.fromJson(Map<String, dynamic> json) =
      _$ChartDataEntityImpl.fromJson;

  @override
  int get days;
  @override
  @JsonKey(name: 'vs_currency')
  String get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$ChartDataEntityImplCopyWith<_$ChartDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
