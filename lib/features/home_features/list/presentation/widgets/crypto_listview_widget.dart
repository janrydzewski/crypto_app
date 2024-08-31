import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/list/domain/entities/crypto_entity.dart';
import 'package:flutter/material.dart';

class CryptoListViewWidget extends StatelessWidget {
  final List<CryptoEntity> cryptoList;
  const CryptoListViewWidget({super.key, required this.cryptoList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return _ListViewElementWidget(crypto: cryptoList[index]);
          },
          itemCount: cryptoList.length),
    );
  }
}

class _ListViewElementWidget extends StatelessWidget {
  final CryptoEntity crypto;
  const _ListViewElementWidget({super.key, required this.crypto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MarginsK.h10v4,
      child: Card(
        color: context.tertiaryFixed,
        child: Container(
          margin: MarginsK.h10v10,
          child: Row(
            children: [
              Padding(
                padding: MarginsK.h10,
                child: Image.network(crypto.image, width: 50, height: 50),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(crypto.name, style: context.titleLarge),
                    Text(crypto.symbol.toUpperCase(),
                        style: context.bodyMedium),
                  ],
                ),
              ),
              Padding(
                padding: MarginsK.h10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("${crypto.currentPrice.toStringAsFixed(2)}\$",
                        style: context.titleLarge),
                    Text(
                      "${crypto.priceChangePercentage.toStringAsFixed(2)}%",
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
