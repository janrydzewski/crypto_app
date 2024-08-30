// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiFailure {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiFailureCopyWith<ApiFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res, ApiFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res, $Val extends ApiFailure>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiFailureImplCopyWith<$Res>
    implements $ApiFailureCopyWith<$Res> {
  factory _$$ApiFailureImplCopyWith(
          _$ApiFailureImpl value, $Res Function(_$ApiFailureImpl) then) =
      __$$ApiFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ApiFailureImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ApiFailureImpl>
    implements _$$ApiFailureImplCopyWith<$Res> {
  __$$ApiFailureImplCopyWithImpl(
      _$ApiFailureImpl _value, $Res Function(_$ApiFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ApiFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiFailureImpl extends _ApiFailure {
  const _$ApiFailureImpl({required this.message}) : super._();

  @override
  final String message;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      __$$ApiFailureImplCopyWithImpl<_$ApiFailureImpl>(this, _$identity);
}

abstract class _ApiFailure extends ApiFailure {
  const factory _ApiFailure({required final String message}) = _$ApiFailureImpl;
  const _ApiFailure._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ParseFailure {
  StackTrace? get stackTrace => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace? stackTrace) typeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace? stackTrace)? typeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace? stackTrace)? typeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypeFailure value) typeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypeFailure value)? typeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypeFailure value)? typeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParseFailureCopyWith<ParseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParseFailureCopyWith<$Res> {
  factory $ParseFailureCopyWith(
          ParseFailure value, $Res Function(ParseFailure) then) =
      _$ParseFailureCopyWithImpl<$Res, ParseFailure>;
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class _$ParseFailureCopyWithImpl<$Res, $Val extends ParseFailure>
    implements $ParseFailureCopyWith<$Res> {
  _$ParseFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypeFailureImplCopyWith<$Res>
    implements $ParseFailureCopyWith<$Res> {
  factory _$$TypeFailureImplCopyWith(
          _$TypeFailureImpl value, $Res Function(_$TypeFailureImpl) then) =
      __$$TypeFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StackTrace? stackTrace});
}

/// @nodoc
class __$$TypeFailureImplCopyWithImpl<$Res>
    extends _$ParseFailureCopyWithImpl<$Res, _$TypeFailureImpl>
    implements _$$TypeFailureImplCopyWith<$Res> {
  __$$TypeFailureImplCopyWithImpl(
      _$TypeFailureImpl _value, $Res Function(_$TypeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stackTrace = freezed,
  }) {
    return _then(_$TypeFailureImpl(
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$TypeFailureImpl extends TypeFailure {
  const _$TypeFailureImpl({this.stackTrace}) : super._();

  @override
  final StackTrace? stackTrace;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeFailureImplCopyWith<_$TypeFailureImpl> get copyWith =>
      __$$TypeFailureImplCopyWithImpl<_$TypeFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StackTrace? stackTrace) typeFailure,
  }) {
    return typeFailure(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StackTrace? stackTrace)? typeFailure,
  }) {
    return typeFailure?.call(stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StackTrace? stackTrace)? typeFailure,
    required TResult orElse(),
  }) {
    if (typeFailure != null) {
      return typeFailure(stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TypeFailure value) typeFailure,
  }) {
    return typeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TypeFailure value)? typeFailure,
  }) {
    return typeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TypeFailure value)? typeFailure,
    required TResult orElse(),
  }) {
    if (typeFailure != null) {
      return typeFailure(this);
    }
    return orElse();
  }
}

abstract class TypeFailure extends ParseFailure {
  const factory TypeFailure({final StackTrace? stackTrace}) = _$TypeFailureImpl;
  const TypeFailure._() : super._();

  @override
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$TypeFailureImplCopyWith<_$TypeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnknownFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? undefined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownFailure value) undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownFailure value)? undefined,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownFailure value)? undefined,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnknownFailureCopyWith<UnknownFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownFailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(
          UnknownFailure value, $Res Function(UnknownFailure) then) =
      _$UnknownFailureCopyWithImpl<$Res, UnknownFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res, $Val extends UnknownFailure>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$UnknownFailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl extends _UnknownFailure {
  const _$UnknownFailureImpl({this.message}) : super._();

  @override
  final String? message;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) undefined,
  }) {
    return undefined(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? undefined,
  }) {
    return undefined?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? undefined,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnknownFailure value) undefined,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnknownFailure value)? undefined,
  }) {
    return undefined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnknownFailure value)? undefined,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure extends UnknownFailure {
  const factory _UnknownFailure({final String? message}) = _$UnknownFailureImpl;
  const _UnknownFailure._() : super._();

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
