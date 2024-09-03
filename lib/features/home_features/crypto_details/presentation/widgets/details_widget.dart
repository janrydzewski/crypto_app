import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/currency_extenstion.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/shared/custom_cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: ClipRRect(
              borderRadius: MarginsK.circular40,
              child: CustomCachedNetworkImage(
                  imageUrl: cryptoDetails.image.large)),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          context.watch<UserBalanceCubit>().state.currency.format(cryptoDetails
                  .marketData.currentPrice['usd'] /
              context.watch<UserBalanceCubit>().state.currency.currencyRate),
          style: context.displaySmall,
        ),
        const SizedBox(
          height: 10,
        ),
        _buildPercentage(context),
      ],
    );
  }

  Widget _buildPercentage(BuildContext context) => Container(
        padding: MarginsK.h10v4,
        decoration: BoxDecoration(
            borderRadius: MarginsK.circular10,
            color: !isNeutral
                ? isPositive
                    ? context.secondaryColor.withOpacity(0.2)
                    : context.errorColor.withOpacity(0.2)
                : context.outline.withOpacity(0.2)),
        child: Text(
            "${isPositive ? "+" : ""}${cryptoDetails.marketData.priceChangePercentage24h.toStringAsFixed(1)}%"),
      );

  bool get isPositive {
    return cryptoDetails.marketData.priceChangePercentage24h > 0;
  }

  bool get isNeutral {
    return cryptoDetails.marketData.priceChangePercentage24h == 0;
  }
}
