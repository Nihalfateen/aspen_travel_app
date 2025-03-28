import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/bottom_nav_bar.dart';


class MainScreen extends StatelessWidget {
   const MainScreen(this.navigationShell, {super.key});
  static const route = "/MainScreen";

  final StatefulNavigationShell navigationShell;
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar:HomeBottomNavBar(navigationShell.currentIndex,navigationShell),
    );
  }
}
