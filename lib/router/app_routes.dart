import 'package:flutter/material.dart';
import 'package:app_seccion_6/screens/screens.dart';
import 'package:app_seccion_6/models/models.dart';

class AppRoutes {
  static const intialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'List 1 Screen',
        screen: const ListView1(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'listview2',
        name: 'List 2 Screen',
        screen: const ListView2(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.verified_user),
    MenuOption(
        route: 'animated',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow_outlined),
    MenuOption(
        route: "input",
        icon: Icons.verified_user,
        name: "Input Screen",
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        name: 'Slider && Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_rounded),
    MenuOption(
        route: 'listviewbuilder',
        name: 'InfiniteScrol & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      return const AlertScreen();
    });
  }
}
