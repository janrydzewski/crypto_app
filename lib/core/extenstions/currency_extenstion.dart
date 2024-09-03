import 'package:crypto_app/features/other_features/currency/domain/entities/currency_entity.dart';

extension CurrencyFormatting on CurrencyEntity {
  String format(double amount) {
    if (isSymbolOnRight) {
      return '${amount.toStringAsFixed(2)}$symbol';
    } else {
      return '$symbol${amount.toStringAsFixed(2)}';
    }
  }
}

extension CurrencySymbolPlacement on CurrencyEntity {
  Map<String, String?> getCurrencyPrefixSuffix() {
    if (isSymbolOnRight) {
      return {
        'prefix': null,
        'suffix': symbol,
      };
    } else {
      return {
        'prefix': symbol,
        'suffix': null,
      };
    }
  }
}
