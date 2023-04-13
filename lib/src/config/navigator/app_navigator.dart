import 'package:flutter/material.dart';

import 'package:book_tiket/src/config/navigator/routes.dart';

import '../../features/screen.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return _buildRoute(settings, const SplashWelcomScreen());
      case Routes.welcomScreen:
        return _buildRoute(settings, const WelcomScreen());
      case Routes.loginScreen:
        return _buildRoute(settings, const LoginScreen());
      case Routes.signUpScreen:
        return _buildRoute(settings, const SignUpScreen());
      case Routes.homeScreen:
        return _buildRoute(settings, const HomeScreen());
      case Routes.bottomNavBar:
        return _buildRoute(settings, const BottomNavbar());
      case Routes.searchScreen:
        return _buildRoute(settings, const SearchSCreen());
      case Routes.homeHotelScreen:
        return _buildRoute(settings, const HomeHotelScreen());
      case Routes.ticketScreen:
        return _buildRoute(settings, const TicketScreen());
      case Routes.editProfileScreen:
        return _buildRoute(settings, const EditProfileScreen());
      case Routes.selectDate:
        return _buildRoute(settings, SelectDate());
      case Routes.guestAndRoom:
        return _buildRoute(settings, const GuestAndRoom());
      case Routes.searchFlight:
        return _buildRoute(settings, const SearchFlight());
      case Routes.paymentSceen:
        return _buildRoute(settings, const PaymentScreen());
      default:
        return null;
    }
  }

  static MaterialPageRoute _buildRoute(
    RouteSettings routeSettings,
    Widget builder,
  ) {
    return MaterialPageRoute(
      builder: (context) => builder,
      settings: routeSettings,
    );
  }

  static Future push<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushNamed(route, arguments: arguments);
  }

  static void pop([Object? arg]) {
    if (canPop) {
      state.pop(arg);
    }
  }

  static void popPush(
    String route, {
    Object? arguments,
  }) {
    if (canPop) {
      state.popAndPushNamed(route, arguments: arguments);
    }
  }

  static Future pushAndRemoveUntil<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushNamedAndRemoveUntil(
      route,
      (route) => false,
      arguments: arguments,
    );
  }

  static Future replaceWith<T>(
    String route, {
    Object? arguments,
  }) {
    return state.pushReplacementNamed(route, arguments: arguments);
  }

  static void popUntil<T>(String route) {
    state.popUntil(ModalRoute.withName(route));
  }

  static bool get canPop => state.canPop();
  static BuildContext? get context => navigatorKey.currentContext;

  static NavigatorState get state => navigatorKey.currentState!;
}
