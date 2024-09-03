import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/currency_extenstion.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/router/routes.dart';
import 'package:crypto_app/core/theme/styles/box_styles.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/shared/custom_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TrendingCryptoListViewWidget extends StatelessWidget {
  final List<TrendingCryptoEntity> trendingCryptoList;
  const TrendingCryptoListViewWidget(
      {super.key, required this.trendingCryptoList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _ListViewElementWidget(
              trendingCrypto: trendingCryptoList[index]);
        },
        itemCount: trendingCryptoList.length);
  }
}

class _ListViewElementWidget extends StatelessWidget {
  final TrendingCryptoEntity trendingCrypto;
  const _ListViewElementWidget({required this.trendingCrypto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("${RoutesK.cryptoList}/${RoutesK.details}"
          .replaceAll(':id', trendingCrypto.id)),
      child: Padding(
        padding: MarginsK.h10v4,
        child: Container(
          decoration: dropShadowEffect(context)
              .copyWith(color: Theme.of(context).scaffoldBackgroundColor),
          margin: MarginsK.h10v4,
          padding: MarginsK.h10v15,
          child: Row(
            children: [
              Padding(
                padding: MarginsK.h10,
                child: CustomCachedNetworkImage(
                    imageUrl: trendingCrypto.image, width: 50, height: 50),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(trendingCrypto.name, style: context.titleLarge),
                    Text(trendingCrypto.symbol.toUpperCase(),
                        style: context.bodyMedium),
                  ],
                ),
              ),
              Padding(
                padding: MarginsK.h10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        context.watch<UserBalanceCubit>().state.currency.format(
                            trendingCrypto.trendingCryptoData.price *
                                context
                                    .watch<UserBalanceCubit>()
                                    .state
                                    .currency
                                    .currencyRate),
                        style: context.titleLarge),
                    Text(
                      "${trendingCrypto.trendingCryptoData.priceChangePercentage['usd'].toStringAsFixed(2)}%",
                      style: context.titleSmall,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
