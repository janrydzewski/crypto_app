// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IntervalEvent {
  IntervalEntity get interval => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IntervalEntity interval) changeInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IntervalEntity interval)? changeInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IntervalEntity interval)? changeInterval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeInterval value) changeInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeInterval value)? changeInterval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeInterval value)? changeInterval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntervalEventCopyWith<IntervalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalEventCopyWith<$Res> {
  factory $IntervalEventCopyWith(
          IntervalEvent value, $Res Function(IntervalEvent) then) =
      _$IntervalEventCopyWithImpl<$Res, IntervalEvent>;
  @useResult
  $Res call({IntervalEntity interval});

  $IntervalEntityCopyWith<$Res> get interval;
}

/// @nodoc
class _$IntervalEventCopyWithImpl<$Res, $Val extends IntervalEvent>
    implements $IntervalEventCopyWith<$Res> {
  _$IntervalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
  }) {
    return _then(_value.copyWith(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as IntervalEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntervalEntityCopyWith<$Res> get interval {
    return $IntervalEntityCopyWith<$Res>(_value.interval, (value) {
      return _then(_value.copyWith(interval: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeIntervalImplCopyWith<$Res>
    implements $IntervalEventCopyWith<$Res> {
  factory _$$ChangeIntervalImplCopyWith(_$ChangeIntervalImpl value,
          $Res Function(_$ChangeIntervalImpl) then) =
      __$$ChangeIntervalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IntervalEntity interval});

  @override
  $IntervalEntityCopyWith<$Res> get interval;
}

/// @nodoc
class __$$ChangeIntervalImplCopyWithImpl<$Res>
    extends _$IntervalEventCopyWithImpl<$Res, _$ChangeIntervalImpl>
    implements _$$ChangeIntervalImplCopyWith<$Res> {
  __$$ChangeIntervalImplCopyWithImpl(
      _$ChangeIntervalImpl _value, $Res Function(_$ChangeIntervalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
  }) {
    return _then(_$ChangeIntervalImpl(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as IntervalEntity,
    ));
  }
}

/// @nodoc

class _$ChangeIntervalImpl implements _ChangeInterval {
  const _$ChangeIntervalImpl({required this.interval});

  @override
  final IntervalEntity interval;

  @override
  String toString() {
    return 'IntervalEvent.changeInterval(interval: $interval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIntervalImpl &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIntervalImplCopyWith<_$ChangeIntervalImpl> get copyWith =>
      __$$ChangeIntervalImplCopyWithImpl<_$ChangeIntervalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IntervalEntity interval) changeInterval,
  }) {
    return changeInterval(interval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IntervalEntity interval)? changeInterval,
  }) {
    return changeInterval?.call(interval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IntervalEntity interval)? changeInterval,
    required TResult orElse(),
  }) {
    if (changeInterval != null) {
      return changeInterval(interval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeInterval value) changeInterval,
  }) {
    return changeInterval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeInterval value)? changeInterval,
  }) {
    return changeInterval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeInterval value)? changeInterval,
    required TResult orElse(),
  }) {
    if (changeInterval != null) {
      return changeInterval(this);
    }
    return orElse();
  }
}

abstract class _ChangeInterval implements IntervalEvent {
  const factory _ChangeInterval({required final IntervalEntity interval}) =
      _$ChangeIntervalImpl;

  @override
  IntervalEntity get interval;
  @override
  @JsonKey(ignore: true)
  _$$ChangeIntervalImplCopyWith<_$ChangeIntervalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IntervalState {
  IntervalEntity get interval => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IntervalEntity interval) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IntervalEntity interval)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IntervalEntity interval)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IntervalStateCopyWith<IntervalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalStateCopyWith<$Res> {
  factory $IntervalStateCopyWith(
          IntervalState value, $Res Function(IntervalState) then) =
      _$IntervalStateCopyWithImpl<$Res, IntervalState>;
  @useResult
  $Res call({IntervalEntity interval});

  $IntervalEntityCopyWith<$Res> get interval;
}

/// @nodoc
class _$IntervalStateCopyWithImpl<$Res, $Val extends IntervalState>
    implements $IntervalStateCopyWith<$Res> {
  _$IntervalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
  }) {
    return _then(_value.copyWith(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as IntervalEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IntervalEntityCopyWith<$Res> get interval {
    return $IntervalEntityCopyWith<$Res>(_value.interval, (value) {
      return _then(_value.copyWith(interval: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $IntervalStateCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IntervalEntity interval});

  @override
  $IntervalEntityCopyWith<$Res> get interval;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$IntervalStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
  }) {
    return _then(_$DataImpl(
      null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as IntervalEntity,
    ));
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl(this.interval);

  @override
  final IntervalEntity interval;

  @override
  String toString() {
    return 'IntervalState.data(interval: $interval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IntervalEntity interval) data,
  }) {
    return data(interval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(IntervalEntity interval)? data,
  }) {
    return data?.call(interval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IntervalEntity interval)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(interval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements IntervalState {
  const factory _Data(final IntervalEntity interval) = _$DataImpl;

  @override
  IntervalEntity get interval;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
