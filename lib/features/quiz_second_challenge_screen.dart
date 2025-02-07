import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QuizSecondChallengeScreen extends StatelessWidget {
  const QuizSecondChallengeScreen({super.key});

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
            '50',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AdvertisementBanner(),
                 SizedBox(height: 20.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.r),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                          "Question 2 of 5",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff4F46E5),
                          ),
                        ),
                         SizedBox(height: 18.h),
                         Text(
                          "Which feature helps you earn more coins?",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         SizedBox(height: 24.h),
                        const AnswerOption(
                          text: "Watching reward videos",
                          isCorrect: true,
                          isSelected: true,
                        ),
                        SizedBox(height: 12.h),
                        const AnswerOption(
                          text: "Playing games only",
                          isCorrect: false,
                          isSelected: false,
                        ),
                         SizedBox(height: 12.h),
                        const AnswerOption(
                          text: "Daily login",
                          isCorrect: false,
                          isSelected: false,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.h),

               Container(
              padding:  EdgeInsets.all(16.sp),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6A5AE0), Color(0xFF4A90E2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        "Double Your Coins!",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "Watch a quick video",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF4A90E2),
                      padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: const Text("Watch Now"),
                  ),
                ],
              ),
            ),
                SizedBox(height: 24.h),

                const ProgressBar(progress: 0.4), // 40% Progress
                const SizedBox(height: 20),
                const ContinueButton(),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

class AdvertisementBanner extends StatelessWidget {
  const AdvertisementBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.w,
      height: 148.h,
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        color: const Color(0xffE5E7EB).withOpacity(0.5),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
           Text(
            "Advertisement",
            style: TextStyle(
              fontSize: 12.sp,
              color: const Color(0xff64748B),
            ),
          ),
           SizedBox(height: 1.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              "assets/images/pngs/banner.png", // Replace with actual ad image
              height: 100.h,
              width: 326.w,
              // fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class AnswerOption extends StatelessWidget {
  final String text;
  final bool isCorrect;
  final bool isSelected;

  const AnswerOption({
    super.key,
    required this.text,
    required this.isCorrect,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding:  EdgeInsets.all(12.sp),
        width: double.infinity,
        height:  (isSelected && isCorrect)? 88.h : 60.h,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: isSelected
              ? Border.all(color: const Color(0xff4F46E5), width: 2.w)
              : Border.all(color: const Color(0xffE2E8F0), width: 1.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: isSelected ? const Color(0xff4338CA) : Colors.black54,
                ),
              ),
            ),

            if (isSelected && isCorrect)
               Row(
                 children: [
                    Icon(Icons.check_circle, color: Colors.green,size: 20.sp,),
                   SizedBox(width: 8.w,),
                   Text(
                     "Correct! +10 coins",
                     style: TextStyle(fontSize: 14.sp, color: Colors.green),
                   ),
                 ],
               ),
          ],
        ),
      ),
    );
  }
}

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r)
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          children: [
             Text(
              "Ready for the next question?",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 10.h),
            Container(
              height: 56.h,
              width: 310.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color:  const Color(0xFF4F46E5),
              ),
              child: Center(
                child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 16.sp,fontWeight: FontWeight.w500),),
              ),

            ),
          ],
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
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.2),
        //     blurRadius: 4,
        //     spreadRadius: 2,
        //   ),
        // ],
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