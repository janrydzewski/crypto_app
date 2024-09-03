import 'package:crypto_app/core/addons/global.dart';
import 'package:crypto_app/core/extenstions/go_router_extenstion.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/features/other_features/currency/domain/entities/currency_entity.dart';
import 'package:crypto_app/shared/widgets/currency_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CryptoScaffold extends StatefulWidget {
  final Widget body;
  final String? _title;
  final SliverAppBar? _appBar;

  const CryptoScaffold.title({
    super.key,
    required String title,
    required this.body,
  })  : _appBar = null,
        _title = title;
  const CryptoScaffold.appbar({
    super.key,
    required appBar,
    required this.body,
  })  : _appBar = appBar,
        _title = null;

  @override
  State<CryptoScaffold> createState() => _CryptoScaffoldState();
}

class _CryptoScaffoldState extends State<CryptoScaffold> {
  bool isGrey = false;

  String? get title => widget._title;

  SliverAppBar? get appBar => widget._appBar;

  Widget buildAppbar(BuildContext context) {
    if (title != null) {
      return SliverAppBar.medium(
        backgroundColor: Colors.grey,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: Colors.transparent,
          ),
          title: Text(
            title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
    if (appBar != null) {
      return appBar!;
    }
    return const SliverAppBar.medium();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.secondaryColor.withOpacity(0.01),
              context.secondaryColor.withOpacity(0.3),
              context.secondaryColor.withOpacity(0.8),
            ],
          ),
        ),
        child: CustomScrollView(
          controller: GoRouter.of(context).addScrollController
              ? Global.scrollController
              : null,
          physics: const ClampingScrollPhysics(),
          slivers: [
            BlocBuilder<UserBalanceCubit, UserBalanceState>(
              builder: (context, state) {
                return SliverLayoutBuilder(
                  builder: (BuildContext context, constraints) {
                    final scrolled = constraints.scrollOffset > 0;
                    return SliverAppBar.medium(
                      backgroundColor:
                          scrolled ? Colors.grey[100] : Colors.transparent,
                      title: Text(
                        title!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      actions: GoRouter.of(context).displayCurrencyChange
                          ? [
                              IconButton(
                                onPressed: () {
                                  currencyPickerWidget(
                                      context,
                                      [
                                        CurrencyEntity.usd(),
                                        CurrencyEntity.euro(),
                                        CurrencyEntity.pln()
                                      ],
                                      state.currency.code);
                                },
                                icon: const Icon(Icons.settings),
                              ),
                            ]
                          : [],
                    );
                  },
                );
              },
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: widget.body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
