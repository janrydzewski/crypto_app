import 'package:crypto_app/core/addons/global.dart';
import 'package:crypto_app/core/extenstions/go_router_extenstion.dart';
import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CryptoScaffold extends StatelessWidget {
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

  String? get title => _title;
  SliverAppBar? get appBar => _appBar;

  Widget buildAppbar(BuildContext context) {
    if (title != null) {
      return SliverAppBar.medium(
        title: Text(
          title!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
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
      body: CustomScrollView(
        controller: GoRouter.of(context).addScrollController
            ? Global.scrollController
            : null,
        physics: const ClampingScrollPhysics(),
        slivers: [
          buildAppbar(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        context.secondaryColor.withOpacity(0.01),
                        context.secondaryColor.withOpacity(0.3),
                        context.secondaryColor.withOpacity(0.8),
                      ])),
                  child: body),
            ),
          ),
        ],
      ),
    );
  }
}
