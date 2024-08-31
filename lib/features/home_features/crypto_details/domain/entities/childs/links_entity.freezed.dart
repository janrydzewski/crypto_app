// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'links_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinksEntity _$LinksEntityFromJson(Map<String, dynamic> json) {
  return _LinksEntity.fromJson(json);
}

/// @nodoc
mixin _$LinksEntity {
  @JsonKey(name: 'blockchain_site')
  List<String> get blockchainSite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksEntityCopyWith<LinksEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksEntityCopyWith<$Res> {
  factory $LinksEntityCopyWith(
          LinksEntity value, $Res Function(LinksEntity) then) =
      _$LinksEntityCopyWithImpl<$Res, LinksEntity>;
  @useResult
  $Res call({@JsonKey(name: 'blockchain_site') List<String> blockchainSite});
}

/// @nodoc
class _$LinksEntityCopyWithImpl<$Res, $Val extends LinksEntity>
    implements $LinksEntityCopyWith<$Res> {
  _$LinksEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockchainSite = null,
  }) {
    return _then(_value.copyWith(
      blockchainSite: null == blockchainSite
          ? _value.blockchainSite
          : blockchainSite // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinksEntityImplCopyWith<$Res>
    implements $LinksEntityCopyWith<$Res> {
  factory _$$LinksEntityImplCopyWith(
          _$LinksEntityImpl value, $Res Function(_$LinksEntityImpl) then) =
      __$$LinksEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'blockchain_site') List<String> blockchainSite});
}

/// @nodoc
class __$$LinksEntityImplCopyWithImpl<$Res>
    extends _$LinksEntityCopyWithImpl<$Res, _$LinksEntityImpl>
    implements _$$LinksEntityImplCopyWith<$Res> {
  __$$LinksEntityImplCopyWithImpl(
      _$LinksEntityImpl _value, $Res Function(_$LinksEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockchainSite = null,
  }) {
    return _then(_$LinksEntityImpl(
      blockchainSite: null == blockchainSite
          ? _value._blockchainSite
          : blockchainSite // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinksEntityImpl implements _LinksEntity {
  _$LinksEntityImpl(
      {@JsonKey(name: 'blockchain_site')
      required final List<String> blockchainSite})
      : _blockchainSite = blockchainSite;

  factory _$LinksEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinksEntityImplFromJson(json);

  final List<String> _blockchainSite;
  @override
  @JsonKey(name: 'blockchain_site')
  List<String> get blockchainSite {
    if (_blockchainSite is EqualUnmodifiableListView) return _blockchainSite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blockchainSite);
  }

  @override
  String toString() {
    return 'LinksEntity(blockchainSite: $blockchainSite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinksEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._blockchainSite, _blockchainSite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_blockchainSite));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinksEntityImplCopyWith<_$LinksEntityImpl> get copyWith =>
      __$$LinksEntityImplCopyWithImpl<_$LinksEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinksEntityImplToJson(
      this,
    );
  }
}

abstract class _LinksEntity implements LinksEntity {
  factory _LinksEntity(
      {@JsonKey(name: 'blockchain_site')
      required final List<String> blockchainSite}) = _$LinksEntityImpl;

  factory _LinksEntity.fromJson(Map<String, dynamic> json) =
      _$LinksEntityImpl.fromJson;

  @override
  @JsonKey(name: 'blockchain_site')
  List<String> get blockchainSite;
  @override
  @JsonKey(ignore: true)
  _$$LinksEntityImplCopyWith<_$LinksEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
