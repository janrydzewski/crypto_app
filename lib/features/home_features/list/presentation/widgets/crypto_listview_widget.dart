import 'package:crypto_app/core/addons/global.dart';
import 'package:crypto_app/core/constants/margins.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/list/domain/entities/crypto_entity.dart';
import 'package:crypto_app/features/home_features/list/presentation/bloc/list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    Global.scrollController!.addListener(() {
      final maxScroll = Global.scrollController!.position.maxScrollExtent;
      final currentScroll = Global.scrollController!.offset;
      final isLast = currentScroll >= maxScroll;

      if (isLast) {
        setState(() {
          pageKey++;
        });
        context.read<ListBloc>().add(ListEvent.getCryptoList(pageKey: pageKey));
      }
    });

    super.initState();
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
                ? const _LoadingWidget()
                : _ListViewElementWidget(crypto: widget.cryptoList[index]);
          },
          itemCount: widget.cryptoList.length),
    );
  }
}

class _ListViewElementWidget extends StatelessWidget {
  final CryptoEntity crypto;
  const _ListViewElementWidget({super.key, required this.crypto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MarginsK.h10v4,
      child: Card(
        color: context.tertiaryFixed,
        child: Container(
          margin: MarginsK.h10v10,
          child: Row(
            children: [
              Padding(
                padding: MarginsK.h10,
                child: Image.network(crypto.image, width: 50, height: 50),
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
                    Text("${crypto.currentPrice.toStringAsFixed(2)}\$",
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
  const _LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MarginsK.v10,
      child: Center(
          child: LoadingAnimationWidget.threeArchedCircle(
              color: context.primaryColor, size: 30)),
    );
  }
}
