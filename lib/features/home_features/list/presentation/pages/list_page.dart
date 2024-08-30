import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/features/home_features/list/presentation/bloc/list_bloc.dart';
import 'package:crypto_app/features/home_features/list/presentation/widgets/crypto_listview_widget.dart';
import 'package:crypto_app/features/home_features/list/presentation/widgets/list_appbar_widget.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ListBloc(locator())..add(const ListEvent.getCryptoList()),
      child: const _ListView(),
    );
  }
}

class _ListView extends StatelessWidget {
  const _ListView();

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.appbar(
      appBar: listAppBar(context),
      body: SingleChildScrollView(
        child: _buildListView(),
      ),
    );
  }

  _buildListView() {
    return BlocBuilder<ListBloc, ListState>(
      builder: (context, state) {
        return state.when(
          initial: () => CircularProgressIndicator(),
          loading: () => CircularProgressIndicator(),
          data: (data) => CryptoListViewWidget(
            cryptoList: data,
          ),
          failure: (failure) => Text(failure.toString()),
        );
      },
    );
  }
}
