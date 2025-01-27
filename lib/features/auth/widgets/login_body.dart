import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opiny_app/core/extensions/navigation_extension.dart';
import 'package:opiny_app/core/widgets/custom_main_button.dart';
import 'package:opiny_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:opiny_app/core/widgets/custom_text_rich.dart';
import 'package:opiny_app/core/widgets/or_widget.dart';
import 'package:opiny_app/features/auth/screens/complete_your_profile_screen.dart';
import 'package:opiny_app/features/auth/screens/register_screen.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              SvgPicture.asset('assets/images/svgs/login_icon.svg'),
              const SizedBox(height: 26),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1E1B4B),
                ),
              ),
              const SizedBox(height: 26),
              Text(
                'Sign in to continue to your account',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF475569),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 36),
              CustomTextFormFieldWidget(
                controller: emailController,
                hintText: 'Email Address',
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                borderRadius: BorderRadius.circular(12.r),
                contentPadding: EdgeInsets.symmetric(vertical: 18.h),
                prefixIcon: Icon(
                  Iconsax.message,
                  size: 20.sp,
                  color: const Color(0xFFADAEBC),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWidget(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                borderRadius: BorderRadius.circular(12.r),
                contentPadding: EdgeInsets.symmetric(vertical: 18.h),
                prefixIcon: Icon(
                  Iconsax.information,
                  size: 20.sp,
                  color: const Color(0xFFADAEBC),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4F46E5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26.h),
              CustomMainButton(
                titleName: 'Sign In',
                bgColor: const Color(0xFF4F46E5),
                textColor: const Color(0xFFFFFFFF),
                onTap: () => context.pushNamedAndRemoveUntil(CompleteYourProfileScreen.routeName),
              ),
              SizedBox(height: 24.h),
              const OrWidget(text: 'or continue with'),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42.r),
                        border: Border.all(
                            color: const Color(0xFFE2E8F0), width: 1.w),
                      ),
                      child: SvgPicture.asset(
                          'assets/images/svgs/google_icon.svg'),
                    ),
                  ),
                  SizedBox(width: 24.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42.r),
                        border: Border.all(
                            color: const Color(0xFFE2E8F0), width: 1.w),
                      ),
                      child: SvgPicture.asset(
                          'assets/images/svgs/facebook_icon.svg'),
                    ),
                  ),
                  SizedBox(width: 24.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 13.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(42.r),
                        border: Border.all(
                            color: const Color(0xFFE2E8F0), width: 1.w),
                      ),
                      child:
                          SvgPicture.asset('assets/images/svgs/apple_icon.svg'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 34.h),
              CustomTextRich(
                text: 'Don\'t have an account? ',
                clickableText: 'Sign up',
                textStyle: TextStyle(
                  color: const Color(0xFF475569),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                clickableTextStyle: TextStyle(
                  color: const Color(0xFF4F46E5),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                onTap: () => context.pushNamed(RegisterScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
