import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final PricesEntity prices;
  final bool isLoaded;
  const ChartWidget({super.key, required this.prices, required this.isLoaded});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.70,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 0,
          left: 0,
          top: 36,
          bottom: 24,
        ),
        child: LineChart(
          mainData(prices.prices, context, isLoaded),
          duration: const Duration(seconds: 2),
        ),
      ),
    );
  }

  LineChartData mainData(
      final List<List<double>> prices, BuildContext context, bool isLoaded) {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: const FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
            getTooltipColor: (touchedSpot) => Colors.green.withOpacity(0.3),
            getTooltipItems: (List<LineBarSpot> touchedSpots) {
              return touchedSpots.map((LineBarSpot touchedSpot) {
                return LineTooltipItem(touchedSpot.y.toStringAsFixed(2),
                    context.titleSmall!.copyWith(color: context.onSurface));
              }).toList();
            }),
        handleBuiltInTouches: true,
      ),
      minX: 0,
      maxX: prices.length.toDouble() - 1,
      minY: getMinY.toDouble(),
      maxY: isLoaded ? getMaxY.toDouble() : 10,
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

  int get getMinX {
    return prices.prices
        .map((e) => e[0])
        .reduce((a, b) => a < b ? a : b)
        .toInt();
  }

  int get getMaxX {
    return prices.prices
        .map((e) => e[0])
        .reduce((a, b) => a > b ? a : b)
        .toInt();
  }

  int get getMinY {
    return prices.prices
        .map((e) => e[1])
        .reduce((a, b) => a < b ? a : b)
        .toInt();
  }

  int get getMaxY {
    return prices.prices
        .map((e) => e[1])
        .reduce((a, b) => a > b ? a : b)
        .toInt();
  }
}
