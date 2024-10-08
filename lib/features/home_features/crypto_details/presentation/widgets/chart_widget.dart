import 'package:crypto_app/core/extenstions/currency_extenstion.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Widget to build the chart
class ChartWidget extends StatelessWidget {
  final PricesEntity prices;
  final bool isLoaded;
  const ChartWidget({super.key, required this.prices, required this.isLoaded});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: LineChart(
        mainData(prices.prices, context, isLoaded),
        duration: const Duration(seconds: 2),
        curve: Curves.easeInOut,
      ),
    );
  }

  // Function to build the chart data
  LineChartData mainData(
      final List<List<double>> prices, BuildContext context, bool isLoaded) {
    final currency = context.watch<UserBalanceCubit>().state.currency;
    return LineChartData(
      gridData: const FlGridData(show: false),
      titlesData: const FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (touchedSpot) =>
                context.secondaryColor.withOpacity(0.3),
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((LineBarSpot touchedSpot) {
                return LineTooltipItem(currency.format(touchedSpot.y),
                    context.titleSmall!.copyWith(color: context.onSurface));
              }).toList();
            }),
        handleBuiltInTouches: true,
      ),
      minX: 0,
      maxX: prices.length.toDouble() - 1,
      minY: getMinY.toDouble(),
      maxY: isLoaded ? getMaxY.toDouble() : 1,
      lineBarsData: [
        LineChartBarData(
          spots: prices.asMap().entries.map((entry) {
            int index = entry.key;
            List<double> e = entry.value;
            return FlSpot(index.toDouble(), e[1]);
          }).toList(),
          color: context.secondaryColor,
          shadow: Shadow(
            color: context.secondaryColor.withOpacity(0.3),
            blurRadius: 5,
          ),
          isCurved: true,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                context.secondaryColor.withOpacity(0.5),
                context.secondaryColor.withOpacity(0.2),
                context.secondaryColor.withOpacity(0.001),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }

  double get getMinX {
    return prices.prices
        .map((e) => e[0])
        .reduce((a, b) => a < b ? a : b)
        .toDouble();
  }

  double get getMaxX {
    return prices.prices
        .map((e) => e[0])
        .reduce((a, b) => a > b ? a : b)
        .toDouble();
  }

  double get getMinY {
    return prices.prices
        .map((e) => e[1])
        .reduce((a, b) => a < b ? a : b)
        .toDouble();
  }

  double get getMaxY {
    return prices.prices
        .map((e) => e[1])
        .reduce((a, b) => a > b ? a : b)
        .toDouble();
  }
}
