import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/widgets/chart_widget.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/widgets/pick_interval_widget.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final PricesEntity prices;
  final bool isLoaded;
  const InfoWidget({super.key, required this.prices, required this.isLoaded});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChartWidget(
          prices: prices,
          isLoaded: isLoaded,
        ),
        const PickIntervalWidget(),
      ],
    );
  }
}
