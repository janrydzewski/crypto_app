// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinksEntityImpl _$$LinksEntityImplFromJson(Map<String, dynamic> json) =>
    _$LinksEntityImpl(
      blockchainSite: (json['blockchain_site'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LinksEntityImplToJson(_$LinksEntityImpl instance) =>
    <String, dynamic>{
      'blockchain_site': instance.blockchainSite,
    };
