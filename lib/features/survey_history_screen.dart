import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SurveyHistoryScreen extends StatelessWidget {
  const SurveyHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SurveyModel> surveyList = [
      SurveyModel(
        title: 'Netflix Survey',
        status: 'Completed',
        date: 'March 15, 2025',
        coins: '+2450',
        isCompleted: true,
        statusColor: const Color(0xFF059669),
        statusBgColor: const Color(0xFFECFDF5),
      ),
      SurveyModel(
        title: 'Food Delivery App Survey',
        status: 'Pending Review',
        date: 'March 10, 2025',
        coins: '+400',
        isCompleted: false,
        statusColor: const Color(0xffD97706),
        statusBgColor: const Color(0xFFFFFBEB),
      ),
      SurveyModel(
        title: 'Social Media Usage',
        status: 'Disqualified',
        date: 'March 8, 2025',
        coins: '+0',
        isCompleted: false,
        statusColor: const Color(0xffE11D48),
        statusBgColor: const Color(0xFFFFF1F2),
      ),
    ];

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
          'Survey History',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: _CoinsWidget(coins: '2450'),
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
        child: ListView.builder(
          padding: EdgeInsets.all(16.sp),
          itemCount: surveyList.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: SurveyWidget(survey: surveyList[index]),
          ),
        ),
      ),
    );
  }
}

class SurveyModel {
  final String title, status, date, coins;
  final Color statusColor, statusBgColor;
  final bool isCompleted;

  SurveyModel({
    required this.title,
    required this.status,
    required this.date,
    required this.coins,
    required this.statusColor,
    required this.statusBgColor,
    this.isCompleted = false,
  });
}

class SurveyWidget extends StatelessWidget {
  final SurveyModel survey;

  const SurveyWidget({super.key, required this.survey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  survey.title,
                  style: TextStyle(
                    color: const Color(0xFF1E1B4B),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              _StatusWidget(survey: survey),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                survey.date,
                style: TextStyle(
                  color: const Color(0xFF475569),
                  fontSize: 14.sp,
                ),
              ),
              Text(
                '${survey.coins} Coins',
                style: TextStyle(
                  color: const Color(0xFF475569),
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'View Details',
                style: TextStyle(
                  color: const Color(0xFF4F46E5),
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              if (survey.isCompleted) _ReportWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusWidget extends StatelessWidget {
  final SurveyModel survey;

  const _StatusWidget({required this.survey});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: survey.statusBgColor,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Text(
        survey.status,
        style: TextStyle(
          color: survey.statusColor,
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}

class _ReportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/svgs/report_icon.svg'),
        SizedBox(width: 4.w),
        Text(
          'Report Missing Reward',
          style: TextStyle(
            color: const Color(0xFFE11D48),
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}

class _CoinsWidget extends StatelessWidget {
  final String coins;

  const _CoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: const Color(0xFFE0E7FF),
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/svgs/db.svg'),
          SizedBox(width: 8.w),
          Text(
            coins,
            style: TextStyle(color: const Color(0xFF1E1B4B), fontSize: 16.sp),
          ),
        ],
      ),
    );
  }
}
