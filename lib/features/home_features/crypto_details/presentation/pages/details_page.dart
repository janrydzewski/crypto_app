import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/crypto_details_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/prices_entity.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/chart/chart_bloc.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/crypto_details/crypto_details_bloc.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/interval/interval_bloc.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/widgets/details_widget.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/widgets/timeline_chart_widget.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:crypto_app/shared/widgets/error_widget.dart';
import 'package:crypto_app/shared/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DetailsPage extends StatelessWidget {
  final String cryptoId;
  const DetailsPage({super.key, required this.cryptoId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => IntervalBloc(),
        ),
        BlocProvider(
          create: (context) => ChartBloc(cryptoId, locator(),
              context.read<IntervalBloc>(), context.read<UserBalanceCubit>())
            ..add(ChartEvent.getChartData(cryptoId: cryptoId, days: 1)),
        ),
        BlocProvider(
          create: (context) => CryptoDetailsBloc(locator())
            ..add(CryptoDetailsEvent.getCryptoDetails(cryptoId: cryptoId)),
        ),
      ],
      child: _DetailsView(cryptoId),
    );
  }
}

class _DetailsView extends StatelessWidget {
  final String cryptoId;
  const _DetailsView(this.cryptoId);

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.title(
      title: cryptoId.toUpperCase(),
      body: Column(
        children: [
          _buildView(),
          _buildChart(),
        ],
      ),
    );
  }

  _buildView() {
    return BlocBuilder<CryptoDetailsBloc, CryptoDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => Skeletonizer(
            child: DetailsWidget(
              cryptoDetails: CryptoDetailsEntity.example(),
            ),
          ),
          loading: () => Skeletonizer(
            child: DetailsWidget(
              cryptoDetails: CryptoDetailsEntity.example(),
            ),
          ),
          data: (details) => DetailsWidget(
            cryptoDetails: details,
          ),
          failure: (failure) => CustomErrorWidget(failure: failure),
        );
      },
    );
  }

  _buildChart() {
    return BlocBuilder<ChartBloc, ChartState>(
      builder: (context, state) {
        return state.when(
          initial: () => const LoadingWidget(),
          loading: () => TimelineChartWidget(
            prices: PricesEntity.example(),
            isLoaded: false,
          ),
          data: (prices) => TimelineChartWidget(
            prices: prices,
            isLoaded: true,
          ),
          failure: (failure) => CustomErrorWidget(failure: failure),
        );
      },
    );
  }
}
