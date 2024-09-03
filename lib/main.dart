import 'package:crypto_app/core/addons/bloc_observer.dart';
import 'package:crypto_app/core/di/injectable_config.dart';
import 'package:crypto_app/core/router/router.dart';
import 'package:crypto_app/core/theme/theme.dart';
import 'package:crypto_app/features/home_features/home/presentation/bloc/user_balance/cubit/user_balance_cubit.dart';
import 'package:crypto_app/features/other_features/connection/presentation/cubit/network_connection_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  // Initialize the functions
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getApplicationDocumentsDirectory(),
  );
  Bloc.observer = CustomBlocObserver();
  configureDependencies();
  await dotenv.load(fileName: ".env");

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => NetworkConnectionCubit(),
        lazy: false,
      ),
      BlocProvider(
        create: (context) => UserBalanceCubit(),
      ),
    ],
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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
