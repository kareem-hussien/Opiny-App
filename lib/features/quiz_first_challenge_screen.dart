import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QuizFirstChallengeScreen extends StatelessWidget {
  const QuizFirstChallengeScreen({super.key});

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
          'Level 0: Quiz Challenge',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
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

          SvgPicture.asset('assets/images/svgs/quiz_icon2.svg',height: 20.h,width: 20.w),
          SizedBox(width: 8.w),


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
            padding: EdgeInsets.all(16.sp),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const LevelBanner(),
                 SizedBox(height: 24.h),
                const QuestionCard(),
                SizedBox(height: 24.h),
                const ProgressBar(progress: 0.2),
                SizedBox(height: 24.h),
                RewardCard(),

              ],
            ),
          ),
        ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
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
              Image.asset("assets/images/pngs/div3.png",width: 52.w,height: 54.h,),
            ],
          ),

           SizedBox(height: 20.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h) ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white.withOpacity(0.2),
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/images/svgs/lock.svg",width: 18.w,height: 16.h,),
                SizedBox(width: 8.w),
                Text("Watch video after quiz for bonus coins!",style: TextStyle(color: const Color(0xffBFDBFE),fontSize: 14.sp,fontWeight: FontWeight.w400),),
              ],
            ),
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
      child:  Padding(
        padding: EdgeInsets.all(16.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question 1 of 5",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF4F46E5),
              ),
            ),
            SizedBox(height: 18.h),
            Text(
              "What is the main purpose of this game?",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.h),
            const QuizOption(text: "To have fun while learning"),
            const QuizOption(text: "To collect coins only"),
            const QuizOption(text: "To compete with others"),
          ],
        ),
      ),
    );
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
        width: double.infinity,
        padding:  EdgeInsets.symmetric(vertical: 14.h,horizontal: 18.w),
        margin:  EdgeInsets.only(top: 8.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
        ),
        child: Text(
          text,
          textAlign: TextAlign.start,
          style:  TextStyle(fontSize: 16.sp),
        ),
      ),
    );
  }
}
class ProgressBar extends StatelessWidget {
  final double progress;

  const ProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Progress",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff475569),
                ),
              ),
              Text(
                "${(progress * 100).toInt()}%",
                style:  TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400,color: const Color(0xff475569),),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Stack(
            children: [
              Container(
                height: 8.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffE5E7EB),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              Container(
                height: 8.h,
                width: MediaQuery.of(context).size.width * progress,
                decoration: BoxDecoration(
                  color: const Color(0xff4F46E5),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
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
                child: SvgPicture.asset("assets/images/svgs/gift2.svg",width: 24.w,height: 24.h,),
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
              leading: Icon(Icons.play_circle_fill, color: Colors.indigo),
              title: Text("Bonus Video"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/images/svgs/db.svg'),
                  SizedBox(width: 4.w),
                  Text(
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