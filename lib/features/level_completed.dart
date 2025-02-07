import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LevelCompleted extends StatelessWidget {
  const LevelCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Level Completed"),
        surfaceTintColor: Colors.transparent,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/svgs/db.svg'),
                  SizedBox(width: 8.w),
                  Text(
                    "50",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: const Color(0xFF1E1B4B),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ))
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
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 128.h,
                  width: 128.w,
                  child: Image.asset(
                    'assets/images/pngs/div44.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Congratulations!",
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: const Color(0xFF1E1B4B),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.h),
                Text(
                  "You've unlocked Level 1",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: const Color(0xFF475569),
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 36.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/pngs/div (1).png'),
                        SizedBox(height: 8.h),
                        Text(
                          'Quiz Complete',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF475569),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/pngs/div (2).png'),
                        SizedBox(height: 8.h),
                        Text(
                          '50 Coins Earned',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF475569),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/pngs/div (3).png'),
                        SizedBox(height: 8.h),
                        Text(
                          'Level 1 Unlocked',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: const Color(0xFF475569),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 36.h),
                Image.asset('assets/images/pngs/ONR.png'),
                SizedBox(height: 16.h),
                Image.asset('assets/images/pngs/TWO.png'),
                SizedBox(height: 16.h),
                Image.asset('assets/images/pngs/THREE.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
