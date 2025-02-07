import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LevelCompleted extends StatelessWidget {
  const LevelCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: _buildAppBar(),
      body: Container(
        decoration: _buildBackgroundGradient(),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildHeaderImage(),
              _buildTitle(),
              _buildAchievementRow(),
              SizedBox(height: 20.h),
              _buildLevelProgressImages(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
          ),
        )
      ],
    );
  }

  BoxDecoration _buildBackgroundGradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xFFEEF2FF), Color(0xFFEEF2FF), Color(0xFFFFFFFF)],
      ),
    );
  }

  Widget _buildHeaderImage() {
    return Column(
      children: [
        Image.asset('assets/images/pngs/div44.png', height: 128.h, width: 128.w, fit: BoxFit.scaleDown),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Text(
          "Congratulations!",
          style: TextStyle(fontSize: 30.sp, color: const Color(0xFF1E1B4B), fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 8.h),
        Text(
          "You've unlocked Level 1",
          style: TextStyle(fontSize: 16.sp, color: const Color(0xFF475569), fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 36.h),
      ],
    );
  }

  Widget _buildAchievementRow() {
    final List<Map<String, String>> achievements = [
      {'image': 'assets/images/pngs/div (1).png', 'text': 'Quiz Complete'},
      {'image': 'assets/images/pngs/div (2).png', 'text': '50 Coins Earned'},
      {'image': 'assets/images/pngs/div (3).png', 'text': 'Level 1 Unlocked'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: achievements
          .map(
            (ach) => Column(
          children: [
            Image.asset(ach['image']!),
            SizedBox(height: 8.h),
            Text(
              ach['text']!,
              style: TextStyle(fontSize: 14.sp, color: const Color(0xFF475569), fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )
          .toList(),
    );
  }

  Widget _buildLevelProgressImages() {
    final List<String> images = [
      'assets/images/pngs/ONR.png',
      'assets/images/pngs/TWO.png',
      'assets/images/pngs/THREE.png',
    ];

    return Column(
      children: images.map((image) => Padding(
        padding: EdgeInsets.only(bottom: 16.h),
        child: Image.asset(image),
      )).toList(),
    );
  }
}