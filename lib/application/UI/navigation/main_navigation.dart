import 'package:flutter/material.dart';
import 'package:project_rjd/application/UI/screen_factory/screen_factory.dart';

abstract class Screens {
  static const main = "/";
}

class MainNavigation {
  final _sceenFactory = ScreenFactory();
  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        Screens.main: (_) => _sceenFactory.makeMainTabs()
      };
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return null;
  }
}
