import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_entity.freezed.dart';
part 'currency_entity.g.dart';

@freezed
class CurrencyEntity with _$CurrencyEntity {
  factory CurrencyEntity({
    required String code,
    required String symbol,
    required double currencyRate,
  }) = _CurrencyEntity;

  factory CurrencyEntity.usd() => CurrencyEntity(
        code: 'USD',
        symbol: '\$',
        currencyRate: 1,
      );

  factory CurrencyEntity.euro() => CurrencyEntity(
        code: 'EUR',
        symbol: '€',
        currencyRate: 0.85,
      );

  factory CurrencyEntity.pln() => CurrencyEntity(
        code: "PLN",
        symbol: "zł",
        currencyRate: 0.26,
      );

  factory CurrencyEntity.fromJson(Map<String, dynamic> json) =>
      _$CurrencyEntityFromJson(json);
}
