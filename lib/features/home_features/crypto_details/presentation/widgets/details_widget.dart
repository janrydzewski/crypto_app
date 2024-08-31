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
        Container(
          width: 200,
          height: 200,
          child: Image.network(cryptoDetails.image.large),
        ),
        Text(
          cryptoDetails.name,
          style: context.displaySmall,
        ),
        Text(cryptoDetails.symbol.toUpperCase()),
        Text(cryptoDetails.marketData.priceChange24h.toStringAsFixed(4)),
      ],
    );
  }
}
