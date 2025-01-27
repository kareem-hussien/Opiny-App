import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class HelpFaqScreen extends StatelessWidget {
  const HelpFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf8fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Help & FAQ',
          style: TextStyle(
            color: Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.search_normal),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),

              /// Searchbar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: Colors.white, // Light background color
                  borderRadius: BorderRadius.circular(16.r), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(13), // Subtle shadow
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                width: double.infinity, // Adjust the width as needed
                // height: 50, // Adjust the height as needed
                child: Row(
                  children: [
                    Icon(
                      Iconsax.search_normal,
                      color: Color(0xFF94A3B8),
                      size: 20.sp,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, // Remove underline
                          hintText: 'Search for help',
                          hintStyle: TextStyle(
                            color: Color(0xFFADAEBC), // Light gray hint color
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: const TextStyle(
                          color: Color(0xFF4A4A4A), // Text color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),

              Text(
                'Popular Topics',
                style: TextStyle(
                  color: const Color(0XFF1E1B4B),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.h),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              'assets/images/svgs/database_icon.svg'),
                          SizedBox(width: 20.w),
                          Text(
                            'Rewards',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1E1B4B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              'assets/images/svgs/levels_icon.svg'),
                          SizedBox(width: 20.w),
                          Text(
                            'Levels',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1E1B4B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              'assets/images/svgs/surveys_icon.svg'),
                          SizedBox(width: 20.w),
                          Text(
                            'Surveys',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1E1B4B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                              'assets/images/svgs/points_icon.svg'),
                          SizedBox(width: 20.w),
                          Text(
                            'Points',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1E1B4B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 32.h),

              Text(
                'Frequently Asked Questions',
                style: TextStyle(
                  color: Color(0XFF1E1B4B),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20.h),

              /// Frequently Asked Questions
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r)
                ),
                child: Column(
                  children: [
                    FAQTile(
                      question: 'How do I earn points?',
                      answer: 'You can earn points by completing tasks and engaging with the app.',
                    ),
                    FAQTile(
                      question: 'When do I get my rewards?',
                      answer: 'Rewards are given instantly after task completion.',
                    ),
                    FAQTile(
                      question: 'How do levels work?',
                      answer: 'Levels represent your progress in the app.',
                    ),
                    FAQTile(
                      question: 'What are coins used for?',
                      answer: 'Coins can be redeemed for various benefits in the app.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFF4F46E5),
                      Color(0xFF2563EB),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Need More Help?',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                            SizedBox(height: 12.h),
                            Text(
                              'Contact our support team',
                              style: TextStyle(
                                color: Color(0xFFC7D2FE),
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),

                        Image.asset('assets/images/pngs/customer_service_ixon.png'),
                      ],
                    ),
                    SizedBox(height: 16.h),

                    /// Implement Main Button in this field
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class FAQTile extends StatelessWidget {
  final String question;
  final String answer;

  const FAQTile({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Color(0xFF94A3B8),
      collapsedTextColor: Color(0xFF1E1B4B),
      title: Text(
        question,
        style: TextStyle(
          color: Color(0XFF1E1B4B), // Question text color
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            answer,
            style: const TextStyle(
              color: Color(0XFF4A4A4A), // Answer text color
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}