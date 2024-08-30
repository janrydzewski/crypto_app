import 'package:crypto_app/features/home_features/list/presentation/widgets/crypto_listview_widget.dart';
import 'package:crypto_app/features/home_features/list/presentation/widgets/list_appbar_widget.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ListView();
  }
}

class _ListView extends StatelessWidget {
  const _ListView();

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.appbar(
      appBar: listAppBar(context),
      body: const SingleChildScrollView(
        child: CryptoListViewWidget(),
      ),
    );
  }
}
