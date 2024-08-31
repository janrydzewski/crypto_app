import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';

import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  final CryptoDetailsEntity cryptoDetails;
  const DetailsWidget({super.key, required this.cryptoDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: Image.network(cryptoDetails.image.large),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "\$${cryptoDetails.marketData.currentPrice['usd'].toStringAsFixed(2)}",
          style: context.displaySmall,
        ),
        const SizedBox(
          height: 10,
        ),
        _buildPercentage(),
      ],
    );
  }

  Widget _buildPercentage() => Container(
        padding: MarginsK.h10v4,
        decoration: BoxDecoration(
            borderRadius: MarginsK.circular10,
            color: isPositive
                ? Colors.green.withOpacity(0.2)
                : Colors.red.withOpacity(0.2)),
        child: Text(
            "${isPositive ? "+" : "-"}${cryptoDetails.marketData.priceChangePercentage24h.toStringAsFixed(1)}%"),
      );

  bool get isPositive {
    return cryptoDetails.marketData.priceChangePercentage24h > 0;
  }
}
