import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/home_features/home/presentation/widgets/home_buttons_widget.dart';
import 'package:crypto_app/shared/widgets/crypto_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CryptoScaffold.title(
      title: 'Dashboard',
      body: Column(
        children: [
          const SizedBox(height: 30),
          Text("Current balance", style: context.titleSmall),
          Text(
            "\$2000.00",
            style: context.displayMedium,
          ),
          const SizedBox(height: 20),
          const HomeButtonsWidget(),
        ],
      ),
    );
  }
}
