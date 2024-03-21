import 'package:flutter/material.dart';
import 'package:take_my_tym/core/utils/app_theme.dart';
import 'package:take_my_tym/features/navigation_menu/presentation/pages/navigation_menu.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Take My Tym",
      home: const NavigationMenu(),
      darkTheme: MyAppDarkTheme().darkTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
