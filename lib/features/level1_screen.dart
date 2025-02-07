import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opiny_app/app.dart';
import 'package:opiny_app/core/extensions/navigation_extension.dart';
import 'package:opiny_app/core/widgets/custom_drawer.dart';
import 'package:opiny_app/core/widgets/custom_drawer_widget.dart';
import 'package:opiny_app/core/widgets/custom_main_button.dart';
import 'package:opiny_app/features/bottom_nav_bar/home/screens/notifications_screen_done.dart';

class Level1Screen extends StatelessWidget {
  Level1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const CustomDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/pngs/profile_image.png'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back',
              style: TextStyle(
                fontSize: 14.sp,
                color: const Color(0xFF64748B),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'Michael Chen',
              style: TextStyle(
                fontSize: 18.sp,
                color: const Color(0xFF0F172A),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => context.pushNamed(NotificationsScreen.routeName),
            icon: const Icon(Iconsax.notification, color: Colors.black),
          ),
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer(); // Open the EndDrawer
              },
              icon: const Icon(Iconsax.menu, color: Colors.black),
            ),
          ),
        ],
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
                SizedBox(height: 16.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/pngs/div2.png'),
                        fit: BoxFit.cover,
                      )),
                  child: Padding(
                      padding: EdgeInsets.all(24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/pngs/case_icon.svg'),
                              SizedBox(width: 8.w),
                              Text(
                                'Level 1 Achieved!',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: const Color(0xFFDDD6FE),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18.h),
                          Text(
                            'Complete Tasks to Unlock Level 2',
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: const Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 18.h),
                          Text(
                            'Complete 3 tasks to advance to the next level',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: const Color(0xFFDDD6FE),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 160.h,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    // physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return ChoicesCategoriesInHome(
                        imagePath: lists[index],
                        imageText: listsText[index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.w);
                    },
                    itemCount: lists.length,
                  ),
                ),
                SizedBox(height: 32.h),
                Container(
                  padding: EdgeInsets.all(24.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level 2 Tasks',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: const Color(0xFF0F172A),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Complete all to unlock Level 2',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xFF64748B),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 12.w),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD1FAE5),
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: Center(
                              child: Text(
                                '0/3 Done',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xFF059669),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      Container(
                        padding: EdgeInsets.all(18.sp),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F3FF),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFEDE9FE)),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/svgs/video_icon.png'),
                            SizedBox(width: 16.w),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Watch Tutorial Video',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xFF0F172A),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    'Learn how to earn rewards',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF64748B),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 14.w),
                              decoration: BoxDecoration(
                                color: const Color(0xFF7C3AED),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Center(
                                child: Text('Start',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        padding: EdgeInsets.all(18.sp),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F3FF),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFEDE9FE)),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/pngs/quiz_icon.png'),
                            SizedBox(width: 16.w),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Complete Quiz',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: const Color(0xFF0F172A),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    'Show what you\'ve learned',
                                    style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF64748B),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8.h, horizontal: 14.w),
                              decoration: BoxDecoration(
                                color: const Color(0xFF2563EB),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Center(
                                child: Text(
                                  'Begin',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
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

  List<String> lists = [
    'assets/images/svgs/watch_icon.svg',
    'assets/images/svgs/quiz_icon.svg',
    'assets/images/svgs/game_icon.svg',
  ];
  List<String> listsText = [
    'Watch',
    'Quiz',
    'Games',
  ];
}


class ChoicesCategoriesInHome extends StatelessWidget {
  const ChoicesCategoriesInHome({
    super.key,
    required this.imagePath,
    required this.imageText,
  });

  final String imagePath;
  final String imageText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.w,
        vertical: 24.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          SvgPicture.asset(imagePath),
          SizedBox(height: 18.h),
          Text(
            imageText,
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xFF475569),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
