
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_entity.freezed.dart';
part 'links_entity.g.dart';

@freezed
class LinksEntity with _$LinksEntity {
  factory LinksEntity({
    @JsonKey(name: 'blockchain_site') required List<String> blockchainSite,
  }) = _LinksEntity;
	
  factory LinksEntity.fromJson(Map<String, dynamic> json) =>
			_$LinksEntityFromJson(json);
}
