import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opiny_app/core/extensions/navigation_extension.dart';
import 'package:opiny_app/core/widgets/custom_drawer_widget.dart';
import 'package:opiny_app/features/bottom_nav_bar/home/screens/notifications_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  int selectedIndex = 0; // Index for the selected segment

  final List<String> segmentTitles = [
    'All Tasks',
    'Surveys',
    'Videos',
    'Games'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      endDrawer: const CustomDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Daily Tasks',
          style: TextStyle(
            fontSize: 20.sp,
            color: const Color(0xFF1E1B4B),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E7FF),
              borderRadius: BorderRadius.all(Radius.circular(100.r)),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/svgs/db.svg'),
                SizedBox(width: 8.w),
                Text(
                  '2450',
                  style: TextStyle(
                    color: const Color(0xFF1E1B4B),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () => context.pushNamed(NotificationsScreen.routeName),
            icon: const Icon(Iconsax.notification, color: Colors.black),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              /// Segmented Control
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(segmentTitles.length, (index) {
                    final isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.w, vertical: 10.h),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFF6366F1)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Text(
                          segmentTitles[index],
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFF1E1B4B),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 24.h),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/svgs/done_icon.svg'),
                              SizedBox(width: 8.w),
                              Text(
                                'Completed',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xFF475569),
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            '12/20',
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: const Color(0xFF1E1B4B),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(16.sp),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            spreadRadius: 0,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/svgs/datab_icon.svg'),
                              SizedBox(width: 8.w),
                              Text(
                                'Today\'s \n Earnings',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xFF475569),
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            '850',
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: const Color(0xFF1E1B4B),
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24.h),
              const CustomDailyTaskWidget(),
              SizedBox(height: 16.h),
              const CustomDailyTaskWidget(),
              SizedBox(height: 16.h),
              const CustomDailyTaskWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDailyTaskWidget extends StatelessWidget {
  const CustomDailyTaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/svgs/video_icon.png'),
              SizedBox(width: 16.w),
              SizedBox(
                // width: MediaQuery.of(context).size.width * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:
                              MediaQuery.of(context).size.width * 0.5,
                          child: Text(
                            'Product Review Video',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: const Color(0xFF0F172A),
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.h, horizontal: 8.w),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDCFCE7),
                            borderRadius:
                                BorderRadius.circular(100.r),
                          ),
                          child: Center(
                            child: Text('Easy',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: const Color(0xFF15803D),
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Watch a 30-second product review',
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
            ],
          ),
          SizedBox(height: 16.h),
          const Divider(),
          SizedBox(height: 6.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: const Color(0xFF475569),
                        size: 16.sp,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '30 sec',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFF475569),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.w),

                  Row(
                    children: [
                      SvgPicture.asset('assets/images/svgs/db.svg'),
                      SizedBox(width: 8.w),
                      Text(
                        '100',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color(0xFF475569),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 8.h, horizontal: 14.w),
                decoration: BoxDecoration(
                  color: const Color(0xFF7C3AED),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: Text('Start Task',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
