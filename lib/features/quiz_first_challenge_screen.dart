import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opiny_app/features/quiz_second_challenge_screen.dart';

class QuizFirstChallengeScreen extends StatelessWidget {
  const QuizFirstChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
      ),
      title: _buildTitle(),
      actions: _buildActions(),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Level 0: Quiz Challenge',
      style: TextStyle(
        color: const Color(0xFF0F172A),
        fontWeight: FontWeight.w600,
        fontSize: 20.sp,
      ),
    );
  }

  List<Widget> _buildActions() {
    return [
      SvgPicture.asset('assets/images/svgs/db.svg'),
      SizedBox(width: 8.w),
      Text(
        '0',
        style: TextStyle(
          color: const Color(0xFF1E1B4B),
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
      ),
      SizedBox(width: 8.w),
      SvgPicture.asset(
        'assets/images/svgs/quiz_icon2.svg',
        height: 20.h,
        width: 20.w,
      ),
      SizedBox(width: 8.w),
    ];
  }

  Widget _buildBody() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFEEF2FF), Color(0xFFEEF2FF), Color(0xFFFFFFFF)],
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            LevelBanner(),
            SizedBox(height: 24),
            QuestionCard(),
            SizedBox(height: 24),
            ProgressBar(progress: 0.2),
            SizedBox(height: 24),
            RewardCard(),
          ],
        ),
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
  const RewardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(16.sp),
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: SvgPicture.asset(
                  "assets/images/svgs/gift2.svg",
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rewards Waiting!",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    "Complete quiz to unlock",
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: ListTile(
              leading: const Icon(Icons.play_circle_fill, color: Colors.indigo),
              title: const Text("Bonus Video"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/images/svgs/db.svg'),
                  SizedBox(width: 4.w),
                  const Text(
                    "+50",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class LevelBanner extends StatelessWidget {
  const LevelBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2563EB), Color(0xFF4F46E5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          SizedBox(height: 20.h),
          _buildBonusInfo(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to Level 0!",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 14.h),
            const Text(
              "Complete the quiz to unlock Level 1",
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
        Image.asset(
          "assets/images/pngs/div3.png",
          width: 52.w,
          height: 54.h,
        ),
      ],
    );
  }

  Widget _buildBonusInfo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/svgs/lock.svg", width: 18.w, height: 16.h),
          SizedBox(width: 8.w),
          Text(
            "Watch video after quiz for bonus coins!",
            style: TextStyle(color: const Color(0xffBFDBFE), fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(16.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildQuestionTitle(),
          SizedBox(height: 18.h),
          _buildQuestionText(),
          SizedBox(height: 16.h),
          ..._buildOptions(),
        ],
      ),
    );
  }

  Widget _buildQuestionTitle() {
    return Text(
      "Question 1 of 5",
      style: TextStyle(fontSize: 14.sp, color: const Color(0xFF4F46E5)),
    );
  }

  Widget _buildQuestionText() {
    return Text(
      "What is the main purpose of this game?",
      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
    );
  }

  List<Widget> _buildOptions() {
    List<String> options = [
      "To have fun while learning",
      "To collect coins only",
      "To compete with others",
    ];
    return options
        .map((text) => QuizOption(text: text))
        .toList();
  }
}

class QuizOption extends StatelessWidget {
  final String text;

  const QuizOption({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 18.w),
        margin: EdgeInsets.only(top: 8.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
        ),
        child: Text(text, style: TextStyle(fontSize: 16.sp)),
      ),
    );
  }
}
