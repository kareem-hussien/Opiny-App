import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opiny_app/core/widgets/custom_drawer.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  static const routeName = '/notifications-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 27.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                        color: const Color(0xFF1F2937),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xFF9CA3AF),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/pngs/bg_image.png',
                      width: 55.w,
                      height: 55.h,
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Omar Abdelaziz',
                              style: TextStyle(
                                color: const Color(0xFF1F2937),
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                              )),
                          Text(
                            '3omarabdelaziz123@gmail.com',
                            style: TextStyle(
                              color: const Color(0xFF6B7280),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 14.h),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(13.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: const Color(0xFFEFF6FF),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/images/svgs/fire_icon.svg'),
                                SizedBox(width: 8.w),
                                Text(
                                  '2,450 XP',
                                  style: TextStyle(
                                    color: const Color(0xFF374151),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Current XP',
                              style: TextStyle(
                                color: const Color(0xFF6B7280),
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12.h),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(13.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: const Color(0xFFEFF6FF),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/images/svgs/db.svg'),
                                SizedBox(width: 8.w),
                                Text(
                                  '\$245.50',
                                  style: TextStyle(
                                    color: const Color(0xFF374151),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Balance',
                              style: TextStyle(
                                color: const Color(0xFF6B7280),
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),

                const Divider(),

                Expanded(
                  child: ListView(
                    children: [
                      const DrawerItem(
                        icon: Icons.home,
                        title: 'Home',
                        isSelected: true,
                      ),
                      const DrawerItem(
                        icon: Icons.task,
                        title: 'Tasks',
                      ),
                      const DrawerItem(
                        icon: Icons.monetization_on,
                        title: 'Earnings',
                      ),
                      const DrawerItem(
                        icon: Icons.emoji_events,
                        title: 'Ranking',
                      ),
                      const DrawerItem(
                        icon: Icons.bar_chart,
                        title: 'Statistics',
                      ),
                      DrawerItem(
                        icon: Icons.notifications,
                        title: 'Notifications',
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6.0,
                            vertical: 2.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Text(
                            '3',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Settings and Help
                const DrawerItem(
                  icon: Icons.settings,
                  title: 'Settings',
                ),
                const DrawerItem(
                  icon: Icons.help_outline,
                  title: 'Help Center',
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () {},
        //     child: Text(
        //       'Mark all as read',
        //       style: TextStyle(
        //         color: Color(0xFF4F46E5),
        //         fontSize: 16.sp,
        //         fontWeight: FontWeight.w500,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: Container(
        padding: EdgeInsets.all(16.sp),
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
        child: Column(
          children: [
            /// Daily Reward Available
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFEEF2FF),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/pngs/present_icon.png'),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Daily Reward Available',
                                  style: TextStyle(
                                    color: const Color(0xFF1E1B4B),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  '2m ago',
                                  style: TextStyle(
                                    color: const Color(0xFF64748B),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Claim your daily bonus of 50 coins! Don\'t miss out on your streak.',
                              style: TextStyle(
                                color: const Color(0xFF475569),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                            SizedBox(height: 8.h),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                              margin: EdgeInsets.only(
                                right: MediaQuery.sizeOf(context).width * 0.4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFF4F46E5),
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Center(
                                child: Text(
                                  'Claim Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            /// Coins Earned
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/svgs/db_icon.svg'),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Coins Earned',
                                  style: TextStyle(
                                    color: const Color(0xFF1E1B4B),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  '1h ago',
                                  style: TextStyle(
                                    color: const Color(0xFF64748B),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'You earned 200 coins for completing the Netflix survey!',
                              style: TextStyle(
                                color: const Color(0xFF475569),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            /// Level Up!
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/svgs/levels_icon.svg'),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Level Up!',
                                  style: TextStyle(
                                    color: const Color(0xFF1E1B4B),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  '2h ago',
                                  style: TextStyle(
                                    color: const Color(0xFF64748B),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Congratulations! You\'ve reached Level 3. New rewards unlocked!',
                              style: TextStyle(
                                color: const Color(0xFF475569),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),

            /// Watch & Earn Completed
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/svgs/video_icon.svg'),
                      SizedBox(width: 16.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Watch & Earn Completed',
                                  style: TextStyle(
                                    color: const Color(0xFF1E1B4B),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  '2h ago',
                                  style: TextStyle(
                                    color: const Color(0xFF64748B),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'You earned 50 coins for watching the promotional video.',
                              style: TextStyle(
                                color: const Color(0xFF475569),
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                              ),
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
