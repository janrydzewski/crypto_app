// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_crypto_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendingCryptoEntity _$TrendingCryptoEntityFromJson(Map<String, dynamic> json) {
  return _TrendingCryptoEntity.fromJson(json);
}

/// @nodoc
mixin _$TrendingCryptoEntity {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'large')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  TrendingCryptoDataEntity get trendingCryptoData =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrendingCryptoEntityCopyWith<TrendingCryptoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingCryptoEntityCopyWith<$Res> {
  factory $TrendingCryptoEntityCopyWith(TrendingCryptoEntity value,
          $Res Function(TrendingCryptoEntity) then) =
      _$TrendingCryptoEntityCopyWithImpl<$Res, TrendingCryptoEntity>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      @JsonKey(name: 'large') String image,
      @JsonKey(name: 'data') TrendingCryptoDataEntity trendingCryptoData});

  $TrendingCryptoDataEntityCopyWith<$Res> get trendingCryptoData;
}

/// @nodoc
class _$TrendingCryptoEntityCopyWithImpl<$Res,
        $Val extends TrendingCryptoEntity>
    implements $TrendingCryptoEntityCopyWith<$Res> {
  _$TrendingCryptoEntityCopyWithImpl(this._value, this._then);

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
    Object? trendingCryptoData = null,
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
              as String,
      trendingCryptoData: null == trendingCryptoData
          ? _value.trendingCryptoData
          : trendingCryptoData // ignore: cast_nullable_to_non_nullable
              as TrendingCryptoDataEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrendingCryptoDataEntityCopyWith<$Res> get trendingCryptoData {
    return $TrendingCryptoDataEntityCopyWith<$Res>(_value.trendingCryptoData,
        (value) {
      return _then(_value.copyWith(trendingCryptoData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrendingCryptoEntityImplCopyWith<$Res>
    implements $TrendingCryptoEntityCopyWith<$Res> {
  factory _$$TrendingCryptoEntityImplCopyWith(_$TrendingCryptoEntityImpl value,
          $Res Function(_$TrendingCryptoEntityImpl) then) =
      __$$TrendingCryptoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      @JsonKey(name: 'large') String image,
      @JsonKey(name: 'data') TrendingCryptoDataEntity trendingCryptoData});

  @override
  $TrendingCryptoDataEntityCopyWith<$Res> get trendingCryptoData;
}

/// @nodoc
class __$$TrendingCryptoEntityImplCopyWithImpl<$Res>
    extends _$TrendingCryptoEntityCopyWithImpl<$Res, _$TrendingCryptoEntityImpl>
    implements _$$TrendingCryptoEntityImplCopyWith<$Res> {
  __$$TrendingCryptoEntityImplCopyWithImpl(_$TrendingCryptoEntityImpl _value,
      $Res Function(_$TrendingCryptoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? trendingCryptoData = null,
  }) {
    return _then(_$TrendingCryptoEntityImpl(
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
              as String,
      trendingCryptoData: null == trendingCryptoData
          ? _value.trendingCryptoData
          : trendingCryptoData // ignore: cast_nullable_to_non_nullable
              as TrendingCryptoDataEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingCryptoEntityImpl implements _TrendingCryptoEntity {
  _$TrendingCryptoEntityImpl(
      {required this.id,
      required this.symbol,
      required this.name,
      @JsonKey(name: 'large') required this.image,
      @JsonKey(name: 'data') required this.trendingCryptoData});

  factory _$TrendingCryptoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingCryptoEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  @JsonKey(name: 'large')
  final String image;
  @override
  @JsonKey(name: 'data')
  final TrendingCryptoDataEntity trendingCryptoData;

  @override
  String toString() {
    return 'TrendingCryptoEntity(id: $id, symbol: $symbol, name: $name, image: $image, trendingCryptoData: $trendingCryptoData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingCryptoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.trendingCryptoData, trendingCryptoData) ||
                other.trendingCryptoData == trendingCryptoData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, symbol, name, image, trendingCryptoData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingCryptoEntityImplCopyWith<_$TrendingCryptoEntityImpl>
      get copyWith =>
          __$$TrendingCryptoEntityImplCopyWithImpl<_$TrendingCryptoEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingCryptoEntityImplToJson(
      this,
    );
  }
}

abstract class _TrendingCryptoEntity implements TrendingCryptoEntity {
  factory _TrendingCryptoEntity(
          {required final String id,
          required final String symbol,
          required final String name,
          @JsonKey(name: 'large') required final String image,
          @JsonKey(name: 'data')
          required final TrendingCryptoDataEntity trendingCryptoData}) =
      _$TrendingCryptoEntityImpl;

  factory _TrendingCryptoEntity.fromJson(Map<String, dynamic> json) =
      _$TrendingCryptoEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(name: 'large')
  String get image;
  @override
  @JsonKey(name: 'data')
  TrendingCryptoDataEntity get trendingCryptoData;
  @override
  @JsonKey(ignore: true)
  _$$TrendingCryptoEntityImplCopyWith<_$TrendingCryptoEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
