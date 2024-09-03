// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketDataEntity _$MarketDataEntityFromJson(Map<String, dynamic> json) {
  return _MarketDataEntity.fromJson(json);
}

/// @nodoc
mixin _$MarketDataEntity {
  @JsonKey(name: 'price_change_24h')
  double get priceChange24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChangePercentage24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  Map<String, dynamic> get currentPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketDataEntityCopyWith<MarketDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketDataEntityCopyWith<$Res> {
  factory $MarketDataEntityCopyWith(
          MarketDataEntity value, $Res Function(MarketDataEntity) then) =
      _$MarketDataEntityCopyWithImpl<$Res, MarketDataEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'price_change_24h') double priceChange24h,
      @JsonKey(name: 'price_change_percentage_24h')
      double priceChangePercentage24h,
      @JsonKey(name: 'current_price') Map<String, dynamic> currentPrice});
}

/// @nodoc
class _$MarketDataEntityCopyWithImpl<$Res, $Val extends MarketDataEntity>
    implements $MarketDataEntityCopyWith<$Res> {
  _$MarketDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceChange24h = null,
    Object? priceChangePercentage24h = null,
    Object? currentPrice = null,
  }) {
    return _then(_value.copyWith(
      priceChange24h: null == priceChange24h
          ? _value.priceChange24h
          : priceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24h: null == priceChangePercentage24h
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketDataEntityImplCopyWith<$Res>
    implements $MarketDataEntityCopyWith<$Res> {
  factory _$$MarketDataEntityImplCopyWith(_$MarketDataEntityImpl value,
          $Res Function(_$MarketDataEntityImpl) then) =
      __$$MarketDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'price_change_24h') double priceChange24h,
      @JsonKey(name: 'price_change_percentage_24h')
      double priceChangePercentage24h,
      @JsonKey(name: 'current_price') Map<String, dynamic> currentPrice});
}

/// @nodoc
class __$$MarketDataEntityImplCopyWithImpl<$Res>
    extends _$MarketDataEntityCopyWithImpl<$Res, _$MarketDataEntityImpl>
    implements _$$MarketDataEntityImplCopyWith<$Res> {
  __$$MarketDataEntityImplCopyWithImpl(_$MarketDataEntityImpl _value,
      $Res Function(_$MarketDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceChange24h = null,
    Object? priceChangePercentage24h = null,
    Object? currentPrice = null,
  }) {
    return _then(_$MarketDataEntityImpl(
      priceChange24h: null == priceChange24h
          ? _value.priceChange24h
          : priceChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24h: null == priceChangePercentage24h
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double,
      currentPrice: null == currentPrice
          ? _value._currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketDataEntityImpl implements _MarketDataEntity {
  _$MarketDataEntityImpl(
      {@JsonKey(name: 'price_change_24h') required this.priceChange24h,
      @JsonKey(name: 'price_change_percentage_24h')
      required this.priceChangePercentage24h,
      @JsonKey(name: 'current_price')
      required final Map<String, dynamic> currentPrice})
      : _currentPrice = currentPrice;

  factory _$MarketDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketDataEntityImplFromJson(json);

  @override
  @JsonKey(name: 'price_change_24h')
  final double priceChange24h;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChangePercentage24h;
  final Map<String, dynamic> _currentPrice;
  @override
  @JsonKey(name: 'current_price')
  Map<String, dynamic> get currentPrice {
    if (_currentPrice is EqualUnmodifiableMapView) return _currentPrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currentPrice);
  }

  @override
  String toString() {
    return 'MarketDataEntity(priceChange24h: $priceChange24h, priceChangePercentage24h: $priceChangePercentage24h, currentPrice: $currentPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketDataEntityImpl &&
            (identical(other.priceChange24h, priceChange24h) ||
                other.priceChange24h == priceChange24h) &&
            (identical(
                    other.priceChangePercentage24h, priceChangePercentage24h) ||
                other.priceChangePercentage24h == priceChangePercentage24h) &&
            const DeepCollectionEquality()
                .equals(other._currentPrice, _currentPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      priceChange24h,
      priceChangePercentage24h,
      const DeepCollectionEquality().hash(_currentPrice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketDataEntityImplCopyWith<_$MarketDataEntityImpl> get copyWith =>
      __$$MarketDataEntityImplCopyWithImpl<_$MarketDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketDataEntityImplToJson(
      this,
    );
  }
}

abstract class _MarketDataEntity implements MarketDataEntity {
  factory _MarketDataEntity(
      {@JsonKey(name: 'price_change_24h') required final double priceChange24h,
      @JsonKey(name: 'price_change_percentage_24h')
      required final double priceChangePercentage24h,
      @JsonKey(name: 'current_price')
      required final Map<String, dynamic>
          currentPrice}) = _$MarketDataEntityImpl;

  factory _MarketDataEntity.fromJson(Map<String, dynamic> json) =
      _$MarketDataEntityImpl.fromJson;

  @override
  @JsonKey(name: 'price_change_24h')
  double get priceChange24h;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChangePercentage24h;
  @override
  @JsonKey(name: 'current_price')
  Map<String, dynamic> get currentPrice;
  @override
  @JsonKey(ignore: true)
  _$$MarketDataEntityImplCopyWith<_$MarketDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
