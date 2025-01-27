import 'package:flutter/material.dart';
import 'package:opiny_app/core/routing/routes_name.dart';
import 'package:opiny_app/features/auth/screens/complete_your_profile_screen.dart';
import 'package:opiny_app/features/auth/screens/login_screen.dart';
import 'package:opiny_app/features/auth/screens/register_screen.dart';
import 'package:opiny_app/features/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:opiny_app/features/bottom_nav_bar/home/screens/notifications_screen.dart';
import 'package:opiny_app/features/onboarding/screens/choice_screen.dart';
import 'package:opiny_app/features/onboarding/screens/onboarding_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OnBoardingScreen.routeName:
        return _buildPageRoute(const OnBoardingScreen(), settings);
      case ChoiceScreen.routeName:
        return _buildPageRoute(const ChoiceScreen(), settings);
      case LoginScreen.routeName:
        return _buildPageRoute(const LoginScreen(), settings);
      case RegisterScreen.routeName:
        return _buildPageRoute(const RegisterScreen(), settings);
      case CompleteYourProfileScreen.routeName:
        return _buildPageRoute(const CompleteYourProfileScreen(), settings);
      case BottomNavBar.routeName:
        return _buildPageRoute(const BottomNavBar(), settings);
      case NotificationsScreen.routeName:
        return _buildPageRoute(const NotificationsScreen(), settings);
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}

PageRouteBuilder _buildPageRoute(Widget page, RouteSettings settings) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOut;
      final tween = Tween(begin: const Offset(1, 0), end: Offset.zero)
          .chain(CurveTween(curve: curve));
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
