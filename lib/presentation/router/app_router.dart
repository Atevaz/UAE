

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_router_names.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.rSplashRoute:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
    }
  }
}
