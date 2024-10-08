// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) {
  return _ImageEntity.fromJson(json);
}

/// @nodoc
mixin _$ImageEntity {
  String get thumb => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageEntityCopyWith<ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntityCopyWith<$Res> {
  factory $ImageEntityCopyWith(
          ImageEntity value, $Res Function(ImageEntity) then) =
      _$ImageEntityCopyWithImpl<$Res, ImageEntity>;
  @useResult
  $Res call({String thumb, String small, String large});
}

/// @nodoc
class _$ImageEntityCopyWithImpl<$Res, $Val extends ImageEntity>
    implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumb = null,
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageEntityImplCopyWith<$Res>
    implements $ImageEntityCopyWith<$Res> {
  factory _$$ImageEntityImplCopyWith(
          _$ImageEntityImpl value, $Res Function(_$ImageEntityImpl) then) =
      __$$ImageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String thumb, String small, String large});
}

/// @nodoc
class __$$ImageEntityImplCopyWithImpl<$Res>
    extends _$ImageEntityCopyWithImpl<$Res, _$ImageEntityImpl>
    implements _$$ImageEntityImplCopyWith<$Res> {
  __$$ImageEntityImplCopyWithImpl(
      _$ImageEntityImpl _value, $Res Function(_$ImageEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thumb = null,
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_$ImageEntityImpl(
      thumb: null == thumb
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageEntityImpl implements _ImageEntity {
  _$ImageEntityImpl(
      {required this.thumb, required this.small, required this.large});

  factory _$ImageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageEntityImplFromJson(json);

  @override
  final String thumb;
  @override
  final String small;
  @override
  final String large;

  @override
  String toString() {
    return 'ImageEntity(thumb: $thumb, small: $small, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageEntityImpl &&
            (identical(other.thumb, thumb) || other.thumb == thumb) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, thumb, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageEntityImplCopyWith<_$ImageEntityImpl> get copyWith =>
      __$$ImageEntityImplCopyWithImpl<_$ImageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageEntityImplToJson(
      this,
    );
  }
}

abstract class _ImageEntity implements ImageEntity {
  factory _ImageEntity(
      {required final String thumb,
      required final String small,
      required final String large}) = _$ImageEntityImpl;

  factory _ImageEntity.fromJson(Map<String, dynamic> json) =
      _$ImageEntityImpl.fromJson;

  @override
  String get thumb;
  @override
  String get small;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$ImageEntityImplCopyWith<_$ImageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
