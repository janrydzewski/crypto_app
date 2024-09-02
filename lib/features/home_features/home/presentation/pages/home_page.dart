import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/crypto_list/presentation/widgets/crypto_listview_widget.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/trending_crypto_list_bloc.dart';
import 'package:crypto_app/features/home_features/home/presentation/widgets/home_buttons_widget.dart';
import 'package:crypto_app/features/home_features/home/presentation/widgets/trending_crypto_listview_widget.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:crypto_app/shared/widgets/error_widget.dart';
import 'package:crypto_app/shared/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => TrendingCryptoListBloc(locator())
        ..add(const TrendingCryptoListEvent.getTrendingCryptoList()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.title(
      title: 'Dashboard',
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text("Current balance", style: context.titleSmall),
            Text(
              "\$2000.00",
              style: context.displayMedium,
            ),
            const SizedBox(height: 20),
            const HomeButtonsWidget(),
            Text("Trending crypto", style: context.titleLarge),
            BlocBuilder<TrendingCryptoListBloc, TrendingCryptoListState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const LoadingWidget(),
                  loading: () => const LoadingWidget(),
                  data: (data) => TrendingCryptoListviewWidget(
                    trendingCryptoList: data,
                  ),
                  failure: (failure) => CustomErrorWidget(failure: failure),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
