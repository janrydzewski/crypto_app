import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/bloc/crypto_details_bloc.dart';
import 'package:crypto_app/features/home_features/crypto_details/presentation/widgets/details_widget.dart';
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
      create: (context) => CryptoDetailsBloc(locator(), locator())
        ..add(CryptoDetailsEvent.getCryptoDetails(cryptoId: cryptoId)),
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
      body: _buildView(),
    );
  }

  _buildView() {
    return BlocBuilder<CryptoDetailsBloc, CryptoDetailsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const LoadingWidget(),
          loading: () => const LoadingWidget(),
          data: (details, prices) => DetailsWidget(
            cryptoDetails: details,
          ),
          failure: (failure) => CustomErrorWidget(failure: failure),
        );
      },
    );
  }
}
