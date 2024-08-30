import 'package:bloc/bloc.dart';
import 'package:crypto_app/core/addons/bloc_observer.dart';
import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/core/router/router.dart';
import 'package:crypto_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = CustomBlocObserver();

  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Crypto App',
      theme: const MaterialTheme().light(),
      darkTheme: const MaterialTheme().dark(),
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
