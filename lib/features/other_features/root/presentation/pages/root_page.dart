import 'package:crypto_app/features/other_features/root/presentation/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const RootPage({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return _RootView(navigationShell);
  }
}

class _RootView extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const _RootView(this.navigationShell);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: navigationShell,
      bottomNavigationBar:
          CustomBottomNavigationBarWidget(navigationShell: navigationShell),
    );
  }
}
