// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prices_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PricesEntity _$PricesEntityFromJson(Map<String, dynamic> json) {
  return _PricesEntity.fromJson(json);
}

/// @nodoc
mixin _$PricesEntity {
  List<List<double>> get prices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricesEntityCopyWith<PricesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricesEntityCopyWith<$Res> {
  factory $PricesEntityCopyWith(
          PricesEntity value, $Res Function(PricesEntity) then) =
      _$PricesEntityCopyWithImpl<$Res, PricesEntity>;
  @useResult
  $Res call({List<List<double>> prices});
}

/// @nodoc
class _$PricesEntityCopyWithImpl<$Res, $Val extends PricesEntity>
    implements $PricesEntityCopyWith<$Res> {
  _$PricesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_value.copyWith(
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PricesEntityImplCopyWith<$Res>
    implements $PricesEntityCopyWith<$Res> {
  factory _$$PricesEntityImplCopyWith(
          _$PricesEntityImpl value, $Res Function(_$PricesEntityImpl) then) =
      __$$PricesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<double>> prices});
}

/// @nodoc
class __$$PricesEntityImplCopyWithImpl<$Res>
    extends _$PricesEntityCopyWithImpl<$Res, _$PricesEntityImpl>
    implements _$$PricesEntityImplCopyWith<$Res> {
  __$$PricesEntityImplCopyWithImpl(
      _$PricesEntityImpl _value, $Res Function(_$PricesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prices = null,
  }) {
    return _then(_$PricesEntityImpl(
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PricesEntityImpl implements _PricesEntity {
  _$PricesEntityImpl({required final List<List<double>> prices})
      : _prices = prices;

  factory _$PricesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricesEntityImplFromJson(json);

  final List<List<double>> _prices;
  @override
  List<List<double>> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  @override
  String toString() {
    return 'PricesEntity(prices: $prices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricesEntityImpl &&
            const DeepCollectionEquality().equals(other._prices, _prices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PricesEntityImplCopyWith<_$PricesEntityImpl> get copyWith =>
      __$$PricesEntityImplCopyWithImpl<_$PricesEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricesEntityImplToJson(
      this,
    );
  }
}

abstract class _PricesEntity implements PricesEntity {
  factory _PricesEntity({required final List<List<double>> prices}) =
      _$PricesEntityImpl;

  factory _PricesEntity.fromJson(Map<String, dynamic> json) =
      _$PricesEntityImpl.fromJson;

  @override
  List<List<double>> get prices;
  @override
  @JsonKey(ignore: true)
  _$$PricesEntityImplCopyWith<_$PricesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
