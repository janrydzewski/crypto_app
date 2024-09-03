import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/features/home_features/crypto_list/presentation/bloc/crypto_list_bloc.dart';
import 'package:crypto_app/features/home_features/crypto_list/presentation/widgets/crypto_listview_widget.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:crypto_app/shared/widgets/error_widget.dart';
import 'package:crypto_app/shared/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoListPage extends StatelessWidget {
  const CryptoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CryptoListBloc(locator(), context.read<UserBalanceCubit>())
            ..add(const CryptoListEvent.getCryptoList(pageKey: 1)),
      child: const _CryptoListView(),
    );
  }
}

class _CryptoListView extends StatelessWidget {
  const _CryptoListView();

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.title(
      title: "Cryptocurrency List",
      body: _buildListView(),
    );
  }

  _buildListView() {
    return BlocBuilder<CryptoListBloc, CryptoListState>(
      builder: (context, state) {
        return state.when(
          initial: () => const LoadingWidget(),
          loading: () => const LoadingWidget(),
          data: (data) => CryptoListViewWidget(
            cryptoList: data,
          ),
          failure: (failure) => CustomErrorWidget(failure: failure),
        );
      },
    );
  }
}
