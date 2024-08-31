import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/crypto_details_bloc.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:crypto_app/shared/widgets/error_widget.dart';
import 'package:crypto_app/shared/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsPage extends StatelessWidget {
  final String cryptoId;
  const DetailsPage({super.key, required this.cryptoId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CryptoDetailsBloc(locator())
        ..add(CryptoDetailsEvent.getCryptoDetails(cryptoId: cryptoId)),
      child: const _DetailsView(),
    );
  }
}

class _DetailsView extends StatelessWidget {
  const _DetailsView();

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.title(
      title: "Cryptocurrency Details",
      body: _buildView(),
    );
  }

  _buildView() {
    return BlocBuilder<CryptoDetailsBloc, CryptoDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const LoadingWidget(),
          loading: () => const LoadingWidget(),
          data: (data) => Text(data.toString()),
          failure: (failure) => CustomErrorWidget(failure: failure),
        );
      },
    );
  }
}
