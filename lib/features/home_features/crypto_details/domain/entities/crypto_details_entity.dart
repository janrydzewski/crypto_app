// ignore_for_file: invalid_annotation_target

import 'package:crypto_app/features/home_features/crypto_details/domain/entities/childs/image_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/childs/links_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/childs/market_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_details_entity.freezed.dart';
part 'crypto_details_entity.g.dart';

@freezed
class CryptoDetailsEntity with _$CryptoDetailsEntity {
  factory CryptoDetailsEntity({
    required String id,
    required String symbol,
    required String name,
    required ImageEntity image,
    required LinksEntity links,
    @JsonKey(name: 'market_data') required MarketDataEntity marketData,
  }) = _CryptoDetailsEntity;

  factory CryptoDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$CryptoDetailsEntityFromJson(json);
}
