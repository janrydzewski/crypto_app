
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_entity.freezed.dart';
part 'image_entity.g.dart';

@freezed
class ImageEntity with _$ImageEntity {
  factory ImageEntity({
    required String thumb,
    required String small,
    required String large,
  }) = _ImageEntity;
	
  factory ImageEntity.fromJson(Map<String, dynamic> json) =>
			_$ImageEntityFromJson(json);
}
