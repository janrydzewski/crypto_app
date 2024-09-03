import 'package:freezed_annotation/freezed_annotation.dart';

part 'prices_entity.freezed.dart';
part 'prices_entity.g.dart';

@freezed
class PricesEntity with _$PricesEntity {
  factory PricesEntity({
    required List<List<double>> prices,
  }) = _PricesEntity;

  factory PricesEntity.example() =>
      PricesEntity(prices: List.generate(24, (index) => [index.toDouble(), 0]));

  factory PricesEntity.fromJson(Map<String, dynamic> json) =>
      _$PricesEntityFromJson(json);
}
