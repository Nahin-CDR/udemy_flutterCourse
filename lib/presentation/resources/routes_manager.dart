import 'package:flutter/material.dart';
import 'package:udemy1/presentation/forgot_password/forgot_password.dart';
import 'package:udemy1/presentation/login/login.dart';
import 'package:udemy1/presentation/main/main_view.dart';
import 'package:udemy1/presentation/onboarding/onboarding.dart';
import 'package:udemy1/presentation/resources/strings_manager.dart';
import 'package:udemy1/presentation/splash/splash.dart';
import 'package:udemy1/presentation/store_details/store_details.dart';

class Routes{
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String forgotPasswordRoute = "/forgotPassword";
}

class RoutesGenerator{
  static Route<dynamic>getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (BuildContext context)=>const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (BuildContext context)=>const LoginView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (BuildContext context)=>const MainView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (BuildContext context)=>const ForgotPasswordView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (BuildContext context)=>const OnBoardingView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (BuildContext context)=>const StoreDetailsView());
      default:
        return MaterialPageRoute(builder: (BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: const Text(AppString.noRouteFound),
            ),
            body: const Center(
              child: Text(AppString.noRouteFound),
            ),
          );
        });
    }
  }
}