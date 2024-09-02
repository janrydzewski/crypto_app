import 'package:crypto_app/core/constants/icons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_entity.freezed.dart';
part 'button_entity.g.dart';

@freezed
class ButtonEntity with _$ButtonEntity {
  factory ButtonEntity({
    required String title,
    required String icon,
  }) = _ButtonEntity;

  factory ButtonEntity.receive() => ButtonEntity(
        title: 'Receive',
        icon: IconsK.receiveIcon,
      );

  factory ButtonEntity.send() => ButtonEntity(
        title: 'Send',
        icon: IconsK.sendIcon,
      );

  factory ButtonEntity.fromJson(Map<String, dynamic> json) =>
      _$ButtonEntityFromJson(json);
}
