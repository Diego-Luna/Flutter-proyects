import 'package:flutter/material.dart';
import 'package:fl_components_app/models/models.dart';
import 'package:fl_components_app/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'ListView1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'ListView2', screen: const ListView2Screen(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alert', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'cards', name: 'Cards', screen: const CardScreen(), icon: Icons.card_travel),
    MenuOption(route: 'avatar', name: 'Circle avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: 'animated', name: 'animated container', screen: const AnimatedScreen(), icon: Icons.play_circle_fill_rounded),
    MenuOption(route: 'inputs', name: 'Text inputs', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOption(route: 'slider', name: 'Slider and Checks', screen: const SliderScreen(), icon: Icons.slideshow_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){

  Map<String, Widget Function(BuildContext)> appRoutes = {};

  appRoutes.addAll({'home': (BuildContext contex) => const HomeScreen()});
  for(final options in menuOptions){
    appRoutes.addAll({options.route: (BuildContext contex) => options.screen});
  }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context ) => const HomeScreen(),
  //   'listview1': (BuildContext context ) => const ListView1Screen(),
  //   'listview2': (BuildContext context ) => const ListView2Screen(),
  //   'alert': (BuildContext context ) => const AlertScreen(),
  //   'card': (BuildContext context ) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder:(context) => const AlertScreen()
    );
  }
}