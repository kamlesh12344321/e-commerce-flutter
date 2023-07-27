import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:ecommerce_flutter_new/view/screens/SplashScreen.dart';
import 'package:ecommerce_flutter_new/view/screens/destination_screen.dart';
import 'package:ecommerce_flutter_new/view/screens/home_screen.dart';
import 'package:ecommerce_flutter_new/view/screens/login_screen.dart';
import 'package:ecommerce_flutter_new/view/screens/registration_screen.dart';
import 'package:ecommerce_flutter_new/view/screens/see_all_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final name = settings.name;
    switch (name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      case RoutesName.registration:
        return MaterialPageRoute(
            builder: (BuildContext context) => const RegistrationScreen());

      case RoutesName.destinationScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DestinationScreen(),
        settings: RouteSettings(arguments: settings.arguments));

      case RoutesName.seeAllScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SeeAllScreen(),
          settings: RouteSettings(arguments: settings.arguments),
        );

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("No Route Defined "),
            ),
          );
        });
    }
  }
}
