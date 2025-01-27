import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opiny_app/core/routing/app_router.dart';
import 'package:opiny_app/features/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:opiny_app/features/invite_friends_screen.dart';
import 'package:opiny_app/features/level1_screen.dart';
import 'package:opiny_app/features/onboarding/screens/onboarding_screen.dart';
import 'package:opiny_app/features/survey_history_screen.dart';

class OpinyApp extends StatelessWidget {
  const OpinyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Opiny',
        theme: ThemeData(
          textTheme: GoogleFonts.interTextTheme(), // Apply Inter font
        ),
        // initialRoute: OnBoardingScreen.routeName,
        // initialRoute: BottomNavBar.routeName,
        onGenerateRoute: AppRouter.generateRoute,
        // home:  const InviteFriendsScreen(),
        home: Level1Screen(),
      ),
    );
  }
}
