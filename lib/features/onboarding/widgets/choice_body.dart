import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opiny_app/core/extensions/navigation_extension.dart';
import 'package:opiny_app/core/widgets/custom_main_button.dart';
import 'package:opiny_app/features/auth/screens/login_screen.dart';
import 'package:opiny_app/features/auth/screens/register_screen.dart';

class ChoiceBody extends StatelessWidget {
  const ChoiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 62.h),
              padding: EdgeInsets.all(30.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                color: const Color(0xFFFFFFFF).withOpacity(.10),
              ),
              child: SvgPicture.asset('assets/images/svgs/present_icon.svg'),
            ),
            SizedBox(height: 32.h),
            Text(
              'Opiny Rewards',
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(height: 18.h),
            Text(
              'Complete surveys, earn rewards, and level up your experience',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFFC7D2FE),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: const Color(0xFFFFFFFF).withOpacity(.1),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: const Color(0xFFFFFFFF).withOpacity(.10),
                    ),
                    child: SvgPicture.asset('assets/images/svgs/icon1.svg'),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Earn Coins',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .55,
                        child: Text(
                          'Complete tasks to earn rewards',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFFFFFFF),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: const Color(0xFFFFFFFF).withOpacity(.1),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: const Color(0xFFFFFFFF).withOpacity(.10),
                    ),
                    child: SvgPicture.asset('assets/images/svgs/icon2.svg'),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Level Up',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .55,
                        child: Text(
                          'Gain XP and climb the ranks',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFFFFFFF),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: const Color(0xFFFFFFFF).withOpacity(.1),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: const Color(0xFFFFFFFF).withOpacity(.10),
                    ),
                    child: SvgPicture.asset('assets/images/svgs/present.svg'),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get Rewards',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .55,
                        child: Text(
                          'Redeem coins for amazing prizes',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFFFFFFFF),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 48.h),
            CustomMainButton(
              titleName: 'Get Started',
              bgColor: const Color(0xFFFFFFFF),
              textColor: const Color(0xFF4F46E5),
              onTap: () => context.pushNamed(LoginScreen.routeName),
            ),
            SizedBox(height: 16.h),
            CustomMainButton(
              titleName: 'Already have an account? Sign in',
              bgColor: const Color(0xFFFFFFFF).withOpacity(.10),
              textColor: const Color(0xFFFFFFFF),
              onTap: () => context.pushNamed(RegisterScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}

