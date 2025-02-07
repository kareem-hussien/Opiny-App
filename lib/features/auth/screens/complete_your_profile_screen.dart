import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opiny_app/app.dart';
import 'package:opiny_app/core/extensions/navigation_extension.dart';
import 'package:opiny_app/core/widgets/custom_main_button.dart';
import 'package:opiny_app/core/widgets/custom_text_form_field_widget.dart';
import 'package:opiny_app/features/auth/widgets/interests_widget.dart';
import 'package:opiny_app/features/bottom_nav_bar/bottom_nav_bar.dart';

class CompleteYourProfileScreen extends StatelessWidget {
  const CompleteYourProfileScreen({super.key});

  static const routeName = '/complete_your_profile_screen';

  @override
  Widget build(BuildContext context) {
    TextEditingController locationController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: null,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Complete Your Profile',
          style: TextStyle(
            color: const Color(0xFF1E1B4B),
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFFEEF2FF),
              Color(0xFFEEF2FF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 23.h),
                Text(
                  'Please provide your details to personalize your experience',
                  style: TextStyle(
                    color: const Color(0xFF475569),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 23.h),

                /// Gender
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(
                          color: const Color(0xFF1E1B4B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(16.sp),
                              decoration: BoxDecoration(
                                color: const Color(0Xff4F46E5),
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/svgs/male_icon.svg',
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    'Male',
                                    style: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(16.sp),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(16.r),
                                border:
                                    Border.all(color: const Color(0XffC7D2FE)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/svgs/female_icon.svg',
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                      color: const Color(0xFF1E1B4B),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.h),

                /// Birthday
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birthday',
                        style: TextStyle(
                          color: const Color(0xFF1E1B4B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.sp),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEEF2FF),
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(color: const Color(0XffC7D2FE)),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Month',
                                    style: TextStyle(
                                      color: const Color(0xFF1E1B4B),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: const Color(0xFF1E1B4B),
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.sp),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEEF2FF),
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(color: const Color(0XffC7D2FE)),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Day',
                                    style: TextStyle(
                                      color: const Color(0xFF1E1B4B),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: const Color(0xFF1E1B4B),
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.sp),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEEF2FF),
                                borderRadius: BorderRadius.circular(12.r),
                                border: Border.all(color: const Color(0XffC7D2FE)),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Year',
                                    style: TextStyle(
                                      color: const Color(0xFF1E1B4B),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: const Color(0xFF1E1B4B),
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.h),

                /// Location
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24.sp),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(
                          color: const Color(0xFF1E1B4B),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12.h),

                      CustomTextFormFieldWidget(
                        controller: locationController,
                        hintText: 'Zip Code',
                        backgroundColor: const Color(0xFFEEF2FF),
                        prefixIcon: const Icon(
                          Icons.location_on,
                          color: Color(0xFF94A3B8),
                        ),
                        textStyle: TextStyle(
                          color: const Color(0xFFADAEBC),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 12.h),

                      Container(
                        padding: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEF2FF),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/svgs/earth_icon.svg'),
                            SizedBox(width: 12.w),
                            Text(
                              'Select Country',
                              style: TextStyle(
                                color: const Color(0xFFADAEBC),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            const Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: const Color(0xFF1E1B4B),
                              size: 22.sp,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.h),

                /// Your Interested
                const InterestsWidget(),

                SizedBox(height: 23.h),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90.h,
        width: double.infinity,
        padding: EdgeInsets.all(16.sp),
        color: Colors.white,
        child: CustomMainButton(
          titleName: 'Complete Profile',
          bgColor: const Color(0xFF4F46E5),
          textColor: const Color(0xFFFFFFFF),
          onTap: () => context.pushNamed(BottomNavBar.routeName),
        ),
      ),
    );
  }
}


