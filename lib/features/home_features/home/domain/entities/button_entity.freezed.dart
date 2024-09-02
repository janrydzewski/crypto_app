// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ButtonEntity _$ButtonEntityFromJson(Map<String, dynamic> json) {
  return _ButtonEntity.fromJson(json);
}

/// @nodoc
mixin _$ButtonEntity {
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ButtonEntityCopyWith<ButtonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonEntityCopyWith<$Res> {
  factory $ButtonEntityCopyWith(
          ButtonEntity value, $Res Function(ButtonEntity) then) =
      _$ButtonEntityCopyWithImpl<$Res, ButtonEntity>;
  @useResult
  $Res call({String title, String icon});
}

/// @nodoc
class _$ButtonEntityCopyWithImpl<$Res, $Val extends ButtonEntity>
    implements $ButtonEntityCopyWith<$Res> {
  _$ButtonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtonEntityImplCopyWith<$Res>
    implements $ButtonEntityCopyWith<$Res> {
  factory _$$ButtonEntityImplCopyWith(
          _$ButtonEntityImpl value, $Res Function(_$ButtonEntityImpl) then) =
      __$$ButtonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String icon});
}

/// @nodoc
class __$$ButtonEntityImplCopyWithImpl<$Res>
    extends _$ButtonEntityCopyWithImpl<$Res, _$ButtonEntityImpl>
    implements _$$ButtonEntityImplCopyWith<$Res> {
  __$$ButtonEntityImplCopyWithImpl(
      _$ButtonEntityImpl _value, $Res Function(_$ButtonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? icon = null,
  }) {
    return _then(_$ButtonEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonEntityImpl implements _ButtonEntity {
  _$ButtonEntityImpl({required this.title, required this.icon});

  factory _$ButtonEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonEntityImplFromJson(json);

  @override
  final String title;
  @override
  final String icon;

  @override
  String toString() {
    return 'ButtonEntity(title: $title, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonEntityImplCopyWith<_$ButtonEntityImpl> get copyWith =>
      __$$ButtonEntityImplCopyWithImpl<_$ButtonEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonEntityImplToJson(
      this,
    );
  }
}

abstract class _ButtonEntity implements ButtonEntity {
  factory _ButtonEntity(
      {required final String title,
      required final String icon}) = _$ButtonEntityImpl;

  factory _ButtonEntity.fromJson(Map<String, dynamic> json) =
      _$ButtonEntityImpl.fromJson;

  @override
  String get title;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$ButtonEntityImplCopyWith<_$ButtonEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
