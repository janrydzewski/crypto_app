// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_crypto_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendingCryptoDataEntity _$TrendingCryptoDataEntityFromJson(
    Map<String, dynamic> json) {
  return _TrendingCryptoDataEntity.fromJson(json);
}

/// @nodoc
mixin _$TrendingCryptoDataEntity {
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  Map<String, dynamic> get priceChangePercentage =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingCryptoDataEntityCopyWith<TrendingCryptoDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingCryptoDataEntityCopyWith<$Res> {
  factory $TrendingCryptoDataEntityCopyWith(TrendingCryptoDataEntity value,
          $Res Function(TrendingCryptoDataEntity) then) =
      _$TrendingCryptoDataEntityCopyWithImpl<$Res, TrendingCryptoDataEntity>;
  @useResult
  $Res call(
      {double price,
      @JsonKey(name: 'price_change_percentage_24h')
      Map<String, dynamic> priceChangePercentage});
}

/// @nodoc
class _$TrendingCryptoDataEntityCopyWithImpl<$Res,
        $Val extends TrendingCryptoDataEntity>
    implements $TrendingCryptoDataEntityCopyWith<$Res> {
  _$TrendingCryptoDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? priceChangePercentage = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage: null == priceChangePercentage
          ? _value.priceChangePercentage
          : priceChangePercentage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingCryptoDataEntityImplCopyWith<$Res>
    implements $TrendingCryptoDataEntityCopyWith<$Res> {
  factory _$$TrendingCryptoDataEntityImplCopyWith(
          _$TrendingCryptoDataEntityImpl value,
          $Res Function(_$TrendingCryptoDataEntityImpl) then) =
      __$$TrendingCryptoDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      @JsonKey(name: 'price_change_percentage_24h')
      Map<String, dynamic> priceChangePercentage});
}

/// @nodoc
class __$$TrendingCryptoDataEntityImplCopyWithImpl<$Res>
    extends _$TrendingCryptoDataEntityCopyWithImpl<$Res,
        _$TrendingCryptoDataEntityImpl>
    implements _$$TrendingCryptoDataEntityImplCopyWith<$Res> {
  __$$TrendingCryptoDataEntityImplCopyWithImpl(
      _$TrendingCryptoDataEntityImpl _value,
      $Res Function(_$TrendingCryptoDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? priceChangePercentage = null,
  }) {
    return _then(_$TrendingCryptoDataEntityImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage: null == priceChangePercentage
          ? _value._priceChangePercentage
          : priceChangePercentage // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingCryptoDataEntityImpl implements _TrendingCryptoDataEntity {
  _$TrendingCryptoDataEntityImpl(
      {required this.price,
      @JsonKey(name: 'price_change_percentage_24h')
      required final Map<String, dynamic> priceChangePercentage})
      : _priceChangePercentage = priceChangePercentage;

  factory _$TrendingCryptoDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingCryptoDataEntityImplFromJson(json);

  @override
  final double price;
  final Map<String, dynamic> _priceChangePercentage;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  Map<String, dynamic> get priceChangePercentage {
    if (_priceChangePercentage is EqualUnmodifiableMapView)
      return _priceChangePercentage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_priceChangePercentage);
  }

  @override
  String toString() {
    return 'TrendingCryptoDataEntity(price: $price, priceChangePercentage: $priceChangePercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingCryptoDataEntityImpl &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._priceChangePercentage, _priceChangePercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price,
      const DeepCollectionEquality().hash(_priceChangePercentage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingCryptoDataEntityImplCopyWith<_$TrendingCryptoDataEntityImpl>
      get copyWith => __$$TrendingCryptoDataEntityImplCopyWithImpl<
          _$TrendingCryptoDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingCryptoDataEntityImplToJson(
      this,
    );
  }
}

abstract class _TrendingCryptoDataEntity implements TrendingCryptoDataEntity {
  factory _TrendingCryptoDataEntity(
          {required final double price,
          @JsonKey(name: 'price_change_percentage_24h')
          required final Map<String, dynamic> priceChangePercentage}) =
      _$TrendingCryptoDataEntityImpl;

  factory _TrendingCryptoDataEntity.fromJson(Map<String, dynamic> json) =
      _$TrendingCryptoDataEntityImpl.fromJson;

  @override
  double get price;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  Map<String, dynamic> get priceChangePercentage;
  @override
  @JsonKey(ignore: true)
  _$$TrendingCryptoDataEntityImplCopyWith<_$TrendingCryptoDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
