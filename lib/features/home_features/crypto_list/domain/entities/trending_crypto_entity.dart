// ignore_for_file: invalid_annotation_target

import 'package:crypto_app/features/home_features/crypto_list/domain/entities/child/trending_crypto_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_crypto_entity.freezed.dart';
part 'trending_crypto_entity.g.dart';

@freezed
class TrendingCryptoEntity with _$TrendingCryptoEntity {
  factory TrendingCryptoEntity({
    required String id,
    required String symbol,
    required String name,
    @JsonKey(name: 'large') required String image,
    @JsonKey(name: 'data') required TrendingCryptoDataEntity trendingCryptoData,
  }) = _TrendingCryptoEntity;

  factory TrendingCryptoEntity.fromJson(Map<String, dynamic> json) =>
      _$TrendingCryptoEntityFromJson(json);
}
