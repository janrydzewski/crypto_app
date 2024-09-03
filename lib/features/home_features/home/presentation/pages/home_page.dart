import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/trending_crypto_entity.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/trending_crypto_list/trending_crypto_list_bloc.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/features/home_features/home/presentation/widgets/home_buttons_widget.dart';
import 'package:crypto_app/features/home_features/home/presentation/widgets/trending_crypto_listview_widget.dart';
import 'package:crypto_app/features/home_features/home/presentation/widgets/user_balance_widget.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:crypto_app/shared/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => TrendingCryptoListBloc(locator())
            ..add(const TrendingCryptoListEvent.getTrendingCryptoList()),
        ),
      ],
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.title(
      title: 'Dashboard',
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text("Current balance", style: context.titleSmall),
            _buildBalance(),
            const SizedBox(height: 20),
            const HomeButtonsWidget(),
            const SizedBox(height: 20),
            Container(
                width: double.infinity,
                margin: MarginsK.h20v10,
                child: Text("Most Viewed Crypto", style: context.titleLarge)),
            _buildListView(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  // Function to build the balance of user account
  _buildBalance() => BlocBuilder<UserBalanceCubit, UserBalanceState>(
        builder: (context, state) {
          return UserBalanceWidget(state: state);
        },
      );

  // Function to build the list view of trending crypto and skeleton
  _buildListView() =>
      BlocBuilder<TrendingCryptoListBloc, TrendingCryptoListState>(
        builder: (context, state) {
          return state.maybeWhen(
            data: (data) =>
                TrendingCryptoListViewWidget(trendingCryptoList: data),
            failure: (failure) => CustomErrorWidget(failure: failure),
            orElse: () => Skeletonizer(
                child: TrendingCryptoListViewWidget(
                    trendingCryptoList: List.generate(
                        8, (index) => TrendingCryptoEntity.example()))),
          );
        },
      );
}
