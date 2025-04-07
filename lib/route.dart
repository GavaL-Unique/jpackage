import 'package:flutter/material.dart';
import 'package:jloading/main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

mixin SKRoutes {
  static String initialRouter = SKPages.pageOne;

  static Route<dynamic> unknownRoute(RouteSettings settings) {
    return MaterialWithModalsPageRoute(
      settings: settings,
      builder: (_) => const NotFoundScreen(),
    );
  }

  static Route<dynamic> generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case SKPages.pageOne:
        return MaterialWithModalsPageRoute(
          settings: settings,
          builder: (_) => const JLoading(
            color: Colors.blue,
            size: 30,
            strokeWidth: 3.0,
          ),
        );
      case SKPages.pageTwo:
        return MaterialWithModalsPageRoute(
          settings: settings,
          builder: (_) => const JLoadingExample(),
        );
      default:
        return MaterialWithModalsPageRoute(
          settings: settings,
          builder: (_) => const JLoading(
            color: Colors.blue,
            size: 30,
            strokeWidth: 3.0,
          ),
        );
    }
  }
}

mixin SKPages {
  static const pageOne = '/pageOne';
  static const pageTwo = '/pageTwo';
}
