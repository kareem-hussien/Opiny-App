import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opiny_app/core/widgets/custom_drawer.dart';
import 'package:opiny_app/core/widgets/custom_main_button.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                              SvgPicture.asset(
                                  'assets/images/svgs/fire_icon.svg'),
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

              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const DrawerItem(
                    icon: Iconsax.home,
                    title: 'Home',
                    isSelected: true,
                  ),
                  const DrawerItem(
                    icon: Iconsax.task,
                    title: 'Tasks',
                  ),
                  const DrawerItem(
                    icon: Icons.data_array,
                    title: 'Earnings',
                  ),
                  const DrawerItem(
                    icon: Icons.rate_review_outlined,
                    title: 'Ranking',
                  ),
                  const DrawerItem(
                    icon: Icons.analytics_outlined,
                    title: 'Statistics',
                  ),
                  DrawerItem(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    trailing: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 2.0,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFEE2E2),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Text(
                        '3',
                        style: TextStyle(
                          color: Color(0XffDC2626),
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Spacer(),
              // Settings and Help
              const Divider(),
              SizedBox(height: 14.h),
              const DrawerItem(
                icon: Icons.settings_outlined,
                title: 'Settings',
              ),
              const DrawerItem(
                icon: Icons.help_outline,
                title: 'Help Center',
              ),
              SizedBox(height: 8.h),
              CustomMainButton(
                haveRow: true,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Iconsax.logout,
                        color: const Color(0xFFDC2626), size: 20.sp),
                    SizedBox(width: 8.w),
                    Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xFFDC2626),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                bgColor: const Color(0xFFFEF2F2),
                textColor: const Color(0xFFFFFFFF),
                // onTap: () => context.pushNamedAndRemoveUntil(CompleteYourProfileScreen.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
