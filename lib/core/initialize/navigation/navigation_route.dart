import 'package:ecommerce_portolio_app/core/constants/navigation_constant.dart';
import 'package:ecommerce_portolio_app/feature/exception/view/not_found_navigation_widget.dart';
import 'package:ecommerce_portolio_app/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';

class NavigationRoute {
  NavigationRoute._init();
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.homeView:
        return normalNavigate(
          HomeView(homeCollectionTitle: args.arguments.toString()),
          NavigationConstants.homeView,
        );

      /* case NavigationConstants.TEST_VIEW:
        return normalNavigate(TestsView(), NavigationConstants.TEST_VIEW);

      case NavigationConstants.BUY_VIEW:
        return normalNavigate(const BuyView(), NavigationConstants.BUY_VIEW);

      case NavigationConstants.ON_BOARD:
        return normalNavigate(
            const OnBoardView(), NavigationConstants.ON_BOARD);

      case NavigationConstants.SETTINGS_WEB_VIEW:
        if (args.arguments is SettingsDynamicModel) {
          return normalNavigate(
            SettingsDynamicView(model: args.arguments as SettingsDynamicModel),
            NavigationConstants.SETTINGS_WEB_VIEW,
          );
        } 
        throw NavigateException<SettingsDynamicModel>(args.arguments); */

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute<dynamic> normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      settings: RouteSettings(name: pageName),
    );
  }
}
