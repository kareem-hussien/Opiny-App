import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opiny_app/core/routing/app_router.dart';
import 'package:opiny_app/features/ahmed/redeem.dart';
import 'package:opiny_app/features/help_faq_screen.dart';
import 'package:opiny_app/features/invite_friends_screen.dart';
import 'package:opiny_app/features/level1_screen.dart';
import 'package:opiny_app/features/level_completed.dart';
import 'package:opiny_app/features/premuim_active.dart';
import 'package:opiny_app/features/privacy_policy_screen.dart';
import 'package:opiny_app/features/quiz_second_challenge_screen.dart';
import 'package:opiny_app/features/rankings_screen.dart';
import 'package:opiny_app/features/share_earn_settings.dart';
import 'package:opiny_app/features/survey_history_screen.dart';
import 'package:opiny_app/support_ticket_screen.dart';
import 'features/data_sharaing_screen.dart';
import 'features/quiz_first_challenge_screen.dart';

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
        home: HelpFaqScreen(),
        // home: Quiz(),
        // home: SuggestFeatures(),
      ),
    );
  }
}
