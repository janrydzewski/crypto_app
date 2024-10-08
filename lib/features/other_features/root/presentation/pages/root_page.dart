import 'package:crypto_app/core/extenstions/style_extenstion.dart';
import 'package:crypto_app/features/other_features/connection/presentation/cubit/network_connection_cubit.dart';
import 'package:crypto_app/features/other_features/connection/presentation/pages/connection_lost_page.dart';
import 'package:crypto_app/features/other_features/root/presentation/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final connectionStatus =
        context.watch<NetworkConnectionCubit>().state.connectionStatus;
    return BlocListener<NetworkConnectionCubit, NetworkConnectionState>(
      listener: (context, state) async {
        if (state.connectionStatus == ConnectionStatus.disconnected) {
          //TODO uncomment on release version - emulator has no internet connection each run on start
          // connectionLostWidget(context);
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: Stack(
          children: [
            navigationShell,
            connectionStatus == ConnectionStatus.disconnected
                ? Positioned(
                    top: 70,
                    left: 20,
                    child: GestureDetector(
                      onTap: () async => connectionLostWidget(context),
                      child: CircleAvatar(
                        backgroundColor: context.errorContainer,
                        child: Icon(
                          Icons.wifi_off,
                          color: context.onTertiary,
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
        bottomNavigationBar:
            CustomBottomNavigationBarWidget(navigationShell: navigationShell),
      ),
    );
  }
}
