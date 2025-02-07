import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'Privacy Policy',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),

                Text(
                  'Last updated: January 15, 2025',
                  style: TextStyle(
                    color: const Color(0xFF64748B),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 16.h),

                /// Introduction
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
                        'Introduction',
                        style: TextStyle(
                          color: const Color(0xFF0F172A),
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Text(
                        'We respect your privacy and are committed to protecting your personal data. This privacy policy explains how we collect, use, and safeguard your information.',
                        style: TextStyle(
                          color: const Color(0xFF475569),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24.h),

                /// Data We Collect
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
                      Row(
                        children: [
                          SvgPicture.asset(
                              'assets/images/svgs/database_icon.svg'),
                          SizedBox(width: 12.w),
                          Text(
                            'Data We Collect',
                            style: TextStyle(
                              color: const Color(0xFF0F172A),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/images/svgs/right_icon.svg'),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Text(
                              'Personal information (name, email, phone number)',
                              style: TextStyle(
                                color: const Color(0xFF475569),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/svgs/right_icon.svg'),
                          SizedBox(width: 8.w),
                          Text(
                            'Device information and usage statistics',
                            style: TextStyle(
                              color: const Color(0xFF475569),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/svgs/right_icon.svg'),
                          SizedBox(width: 8.w),
                          Text(
                            'Survey responses and feedback',
                            style: TextStyle(
                              color: const Color(0xFF475569),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),

                /// How We Use Your Date
                /// Service Improvement
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
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/svgs/dafe_icon.svg'),
                          SizedBox(width: 12.w),
                          Text(
                            'How We Use Your Data',
                            style: TextStyle(
                              color: const Color(0xFF0F172A),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h),

                      /// Service Improvement
                      Container(
                        padding: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Service Improvement',
                              style: TextStyle(
                                color: const Color(0xFF0F172A),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              'We analyze usage patterns to enhance user experience and app functionality',
                              style: TextStyle(
                                color: const Color(0xFF475569),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),

                      /// Communication
                      Container(
                        padding: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Communication',
                              style: TextStyle(
                                color: const Color(0xFF0F172A),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 14.h),
                            Text(
                              'Sending important updates and promotional content',
                              style: TextStyle(
                                color: const Color(0xFF475569),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),

                /// Your Rights
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
                      Row(
                        children: [
                          SvgPicture.asset('assets/images/svgs/your_right.svg'),
                          SizedBox(width: 12.w),
                          Text(
                            'Your Rights',
                            style: TextStyle(
                              color: const Color(0xFF0F172A),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14.h),

                      /// Request Data Export
                      Container(
                        padding: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Request Data Export',
                              style: TextStyle(
                                color: const Color(0xFF0F172A),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Iconsax.arrow_right_3,
                              color: Color(0xFF94A3B8),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 12.h),

                      /// Delete Account
                      Container(
                        padding: EdgeInsets.all(16.sp),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Delete Account',
                              style: TextStyle(
                                color: const Color(0xFF0F172A),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            const Icon(
                              Iconsax.arrow_right_3,
                              color: Color(0xFF94A3B8),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
