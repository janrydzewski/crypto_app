// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_balance_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserBalanceState {
  double get userBalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBalanceStateCopyWith<UserBalanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBalanceStateCopyWith<$Res> {
  factory $UserBalanceStateCopyWith(
          UserBalanceState value, $Res Function(UserBalanceState) then) =
      _$UserBalanceStateCopyWithImpl<$Res, UserBalanceState>;
  @useResult
  $Res call({double userBalance});
}

/// @nodoc
class _$UserBalanceStateCopyWithImpl<$Res, $Val extends UserBalanceState>
    implements $UserBalanceStateCopyWith<$Res> {
  _$UserBalanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userBalance = null,
  }) {
    return _then(_value.copyWith(
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBalanceStateImplCopyWith<$Res>
    implements $UserBalanceStateCopyWith<$Res> {
  factory _$$UserBalanceStateImplCopyWith(_$UserBalanceStateImpl value,
          $Res Function(_$UserBalanceStateImpl) then) =
      __$$UserBalanceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double userBalance});
}

/// @nodoc
class __$$UserBalanceStateImplCopyWithImpl<$Res>
    extends _$UserBalanceStateCopyWithImpl<$Res, _$UserBalanceStateImpl>
    implements _$$UserBalanceStateImplCopyWith<$Res> {
  __$$UserBalanceStateImplCopyWithImpl(_$UserBalanceStateImpl _value,
      $Res Function(_$UserBalanceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userBalance = null,
  }) {
    return _then(_$UserBalanceStateImpl(
      userBalance: null == userBalance
          ? _value.userBalance
          : userBalance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UserBalanceStateImpl extends _UserBalanceState {
  const _$UserBalanceStateImpl({required this.userBalance}) : super._();

  @override
  final double userBalance;

  @override
  String toString() {
    return 'UserBalanceState(userBalance: $userBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBalanceStateImpl &&
            (identical(other.userBalance, userBalance) ||
                other.userBalance == userBalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBalanceStateImplCopyWith<_$UserBalanceStateImpl> get copyWith =>
      __$$UserBalanceStateImplCopyWithImpl<_$UserBalanceStateImpl>(
          this, _$identity);
}

abstract class _UserBalanceState extends UserBalanceState {
  const factory _UserBalanceState({required final double userBalance}) =
      _$UserBalanceStateImpl;
  const _UserBalanceState._() : super._();

  @override
  double get userBalance;
  @override
  @JsonKey(ignore: true)
  _$$UserBalanceStateImplCopyWith<_$UserBalanceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
