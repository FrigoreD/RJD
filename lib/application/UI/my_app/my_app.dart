import 'package:flutter/material.dart';
import 'package:project_rjd/application/UI/navigation/main_navigation.dart';
import 'package:project_rjd/application/UI/screens/main_tabs/main_tabs_screen.dart';
import "package:project_rjd/application/UI/themes/app_theme.dart";
import 'package:project_rjd/core/presentation/accepting_a_shift/accepting_a_shift.dart';
import 'package:project_rjd/core/presentation/entrance/login.dart';
import 'package:project_rjd/core/presentation/entrance/tracking.dart';

class MyApp extends StatelessWidget {
  final mainNavigation = MainNavigation();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', theme: AppTheme.light, routes: {
      '/': (context) => const MainTabsScreen(),
      '/tracking': (context) => const Tracking(),
      '/tracking/login': (context) => const Login(),
      'AcceptingShift': (context) => const AcceptingShift(),
    });
  }
}
