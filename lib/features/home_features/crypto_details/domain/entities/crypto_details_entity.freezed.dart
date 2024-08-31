// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_details_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoDetailsEntity _$CryptoDetailsEntityFromJson(Map<String, dynamic> json) {
  return _CryptoDetailsEntity.fromJson(json);
}

/// @nodoc
mixin _$CryptoDetailsEntity {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ImageEntity get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_data')
  MarketDataEntity get marketData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoDetailsEntityCopyWith<CryptoDetailsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoDetailsEntityCopyWith<$Res> {
  factory $CryptoDetailsEntityCopyWith(
          CryptoDetailsEntity value, $Res Function(CryptoDetailsEntity) then) =
      _$CryptoDetailsEntityCopyWithImpl<$Res, CryptoDetailsEntity>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      ImageEntity image,
      @JsonKey(name: 'market_data') MarketDataEntity marketData});

  $ImageEntityCopyWith<$Res> get image;
  $MarketDataEntityCopyWith<$Res> get marketData;
}

/// @nodoc
class _$CryptoDetailsEntityCopyWithImpl<$Res, $Val extends CryptoDetailsEntity>
    implements $CryptoDetailsEntityCopyWith<$Res> {
  _$CryptoDetailsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? marketData = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntity,
      marketData: null == marketData
          ? _value.marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as MarketDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageEntityCopyWith<$Res> get image {
    return $ImageEntityCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketDataEntityCopyWith<$Res> get marketData {
    return $MarketDataEntityCopyWith<$Res>(_value.marketData, (value) {
      return _then(_value.copyWith(marketData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CryptoDetailsEntityImplCopyWith<$Res>
    implements $CryptoDetailsEntityCopyWith<$Res> {
  factory _$$CryptoDetailsEntityImplCopyWith(_$CryptoDetailsEntityImpl value,
          $Res Function(_$CryptoDetailsEntityImpl) then) =
      __$$CryptoDetailsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      ImageEntity image,
      @JsonKey(name: 'market_data') MarketDataEntity marketData});

  @override
  $ImageEntityCopyWith<$Res> get image;
  @override
  $MarketDataEntityCopyWith<$Res> get marketData;
}

/// @nodoc
class __$$CryptoDetailsEntityImplCopyWithImpl<$Res>
    extends _$CryptoDetailsEntityCopyWithImpl<$Res, _$CryptoDetailsEntityImpl>
    implements _$$CryptoDetailsEntityImplCopyWith<$Res> {
  __$$CryptoDetailsEntityImplCopyWithImpl(_$CryptoDetailsEntityImpl _value,
      $Res Function(_$CryptoDetailsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? marketData = null,
  }) {
    return _then(_$CryptoDetailsEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageEntity,
      marketData: null == marketData
          ? _value.marketData
          : marketData // ignore: cast_nullable_to_non_nullable
              as MarketDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoDetailsEntityImpl implements _CryptoDetailsEntity {
  _$CryptoDetailsEntityImpl(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      @JsonKey(name: 'market_data') required this.marketData});

  factory _$CryptoDetailsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoDetailsEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final ImageEntity image;
  @override
  @JsonKey(name: 'market_data')
  final MarketDataEntity marketData;

  @override
  String toString() {
    return 'CryptoDetailsEntity(id: $id, symbol: $symbol, name: $name, image: $image, marketData: $marketData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoDetailsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.marketData, marketData) ||
                other.marketData == marketData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, symbol, name, image, marketData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoDetailsEntityImplCopyWith<_$CryptoDetailsEntityImpl> get copyWith =>
      __$$CryptoDetailsEntityImplCopyWithImpl<_$CryptoDetailsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoDetailsEntityImplToJson(
      this,
    );
  }
}

abstract class _CryptoDetailsEntity implements CryptoDetailsEntity {
  factory _CryptoDetailsEntity(
      {required final String id,
      required final String symbol,
      required final String name,
      required final ImageEntity image,
      @JsonKey(name: 'market_data')
      required final MarketDataEntity marketData}) = _$CryptoDetailsEntityImpl;

  factory _CryptoDetailsEntity.fromJson(Map<String, dynamic> json) =
      _$CryptoDetailsEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  ImageEntity get image;
  @override
  @JsonKey(name: 'market_data')
  MarketDataEntity get marketData;
  @override
  @JsonKey(ignore: true)
  _$$CryptoDetailsEntityImplCopyWith<_$CryptoDetailsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
