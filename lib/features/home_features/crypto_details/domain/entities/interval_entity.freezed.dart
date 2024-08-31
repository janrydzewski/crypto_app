// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interval_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IntervalEntity _$IntervalEntityFromJson(Map<String, dynamic> json) {
  return _IntervalEntity.fromJson(json);
}

/// @nodoc
mixin _$IntervalEntity {
  String get interval => throw _privateConstructorUsedError;
  int get days => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntervalEntityCopyWith<IntervalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalEntityCopyWith<$Res> {
  factory $IntervalEntityCopyWith(
          IntervalEntity value, $Res Function(IntervalEntity) then) =
      _$IntervalEntityCopyWithImpl<$Res, IntervalEntity>;
  @useResult
  $Res call({String interval, int days});
}

/// @nodoc
class _$IntervalEntityCopyWithImpl<$Res, $Val extends IntervalEntity>
    implements $IntervalEntityCopyWith<$Res> {
  _$IntervalEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
    Object? days = null,
  }) {
    return _then(_value.copyWith(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntervalEntityImplCopyWith<$Res>
    implements $IntervalEntityCopyWith<$Res> {
  factory _$$IntervalEntityImplCopyWith(_$IntervalEntityImpl value,
          $Res Function(_$IntervalEntityImpl) then) =
      __$$IntervalEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String interval, int days});
}

/// @nodoc
class __$$IntervalEntityImplCopyWithImpl<$Res>
    extends _$IntervalEntityCopyWithImpl<$Res, _$IntervalEntityImpl>
    implements _$$IntervalEntityImplCopyWith<$Res> {
  __$$IntervalEntityImplCopyWithImpl(
      _$IntervalEntityImpl _value, $Res Function(_$IntervalEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
    Object? days = null,
  }) {
    return _then(_$IntervalEntityImpl(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntervalEntityImpl implements _IntervalEntity {
  _$IntervalEntityImpl({required this.interval, required this.days});

  factory _$IntervalEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntervalEntityImplFromJson(json);

  @override
  final String interval;
  @override
  final int days;

  @override
  String toString() {
    return 'IntervalEntity(interval: $interval, days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntervalEntityImpl &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.days, days) || other.days == days));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, interval, days);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IntervalEntityImplCopyWith<_$IntervalEntityImpl> get copyWith =>
      __$$IntervalEntityImplCopyWithImpl<_$IntervalEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntervalEntityImplToJson(
      this,
    );
  }
}

abstract class _IntervalEntity implements IntervalEntity {
  factory _IntervalEntity(
      {required final String interval,
      required final int days}) = _$IntervalEntityImpl;

  factory _IntervalEntity.fromJson(Map<String, dynamic> json) =
      _$IntervalEntityImpl.fromJson;

  @override
  String get interval;
  @override
  int get days;
  @override
  @JsonKey(ignore: true)
  _$$IntervalEntityImplCopyWith<_$IntervalEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
