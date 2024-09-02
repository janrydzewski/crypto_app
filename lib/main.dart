import 'package:crypto_app/core/addons/bloc_observer.dart';
import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/core/router/router.dart';
import 'package:crypto_app/core/theme/theme.dart';
import 'package:crypto_app/features/other_features/connection/presentation/cubit/network_connection_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  Bloc.observer = CustomBlocObserver();
  configureDependencies();
  await dotenv.load(fileName: ".env");

  runApp(BlocProvider(
    create: (context) => NetworkConnectionCubit(),
    lazy: false,
    child: const MyApp(),
  ));
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
