// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_list_param_entity.freezed.dart';
part 'crypto_list_param_entity.g.dart';

@freezed
class CryptoListParamEntity with _$CryptoListParamEntity {
  factory CryptoListParamEntity({
    @JsonKey(name: 'per_page') @Default(25) final int pageSize,
    @JsonKey(name: 'page') required int pageKey,
    @JsonKey(name: 'vs_currency') required String currencyCode,
  }) = _CryptoListParamEntity;

  factory CryptoListParamEntity.fromJson(Map<String, dynamic> json) =>
      _$CryptoListParamEntityFromJson(json);
}
