import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opiny_app/core/extensions/navigation_extension.dart';
import 'package:opiny_app/core/widgets/custom_text_rich.dart';
import 'package:opiny_app/features/onboarding/screens/choice_screen.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pngs/onboarding_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 48.h),
          Image.asset('assets/images/pngs/header_icon_onboarding.png'),
          SizedBox(height: 54.h),
          CustomTextRich(
            text: 'Discover Opiny\n',
            clickableText: 'Share & Earn',
            textStyle: TextStyle(
              color: const Color(0xFF1E1B4B),
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
            ),
            clickableTextStyle: TextStyle(
              color: const Color(0Xff4F46E5),
              fontSize: 36.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            'Join our community and turn your \n valuable opinions into exciting rewards',
            style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xFF475569),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: 32.w,
              right: 32.w,
              bottom: 92.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                    color: const Color(0Xff64748B),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () => context.pushNamed(ChoiceScreen.routeName),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: const Color(0Xff4F46E5),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}