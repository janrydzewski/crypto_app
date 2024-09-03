import 'package:crypto_app/core/addons/global.dart';
import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/currency_extenstion.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/core/router/routes.dart';
import 'package:crypto_app/core/theme/styles/box_styles.dart';
import 'package:crypto_app/features/home_features/crypto_list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/crypto_list/presentation/bloc/crypto_list_bloc.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/shared/custom_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CryptoListViewWidget extends StatefulWidget {
  final List<CryptoEntity> cryptoList;
  const CryptoListViewWidget({super.key, required this.cryptoList});

  @override
  State<CryptoListViewWidget> createState() => _CryptoListViewWidgetState();
}

class _CryptoListViewWidgetState extends State<CryptoListViewWidget> {
  int pageKey = 1;

  @override
  void initState() {
    Global.scrollController!.addListener(listener);
    super.initState();
  }

  @override
  void dispose() {
    Global.scrollController!.removeListener(listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return index >= widget.cryptoList.length - 1
                ? widget.cryptoList.length < 200
                    ? const _LoadingWidget()
                    : const SizedBox(
                        height: 100,
                      )
                : _ListViewElementWidget(crypto: widget.cryptoList[index]);
          },
          itemCount: widget.cryptoList.length),
    );
  }

  void listener() {
    final maxScroll = Global.scrollController!.position.maxScrollExtent;
    final currentScroll = Global.scrollController!.offset;
    final isLast = currentScroll >= maxScroll;

    if (isLast) {
      setState(() {
        pageKey++;
      });
      context
          .read<CryptoListBloc>()
          .add(CryptoListEvent.getCryptoList(pageKey: pageKey));
    }
  }
}

class _ListViewElementWidget extends StatelessWidget {
  final CryptoEntity crypto;
  const _ListViewElementWidget({required this.crypto});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push("${RoutesK.cryptoList}/${RoutesK.details}"
          .replaceAll(':id', crypto.id)),
      child: Padding(
        padding: MarginsK.h10v4,
        child: Container(
          decoration: dropShadowEffect(context)
              .copyWith(color: Theme.of(context).scaffoldBackgroundColor),
          margin: MarginsK.h10v10,
          padding: MarginsK.h10v15,
          child: Row(
            children: [
              Padding(
                padding: MarginsK.h10,
                child: CustomCachedNetworkImage(
                    imageUrl: crypto.image, width: 50, height: 50),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(crypto.name, style: context.titleLarge),
                    Text(crypto.symbol.toUpperCase(),
                        style: context.bodyMedium),
                  ],
                ),
              ),
              Padding(
                padding: MarginsK.h10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                        context
                            .watch<UserBalanceCubit>()
                            .state
                            .currency
                            .format(crypto.currentPrice),
                        style: context.titleLarge),
                    Text(
                      "${crypto.priceChangePercentage.toStringAsFixed(2)}%",
                      style: context.titleSmall,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MarginsK.top20b80,
      child: Center(
          child: LoadingAnimationWidget.threeArchedCircle(
              color: context.primaryColor, size: 40)),
    );
  }
}
