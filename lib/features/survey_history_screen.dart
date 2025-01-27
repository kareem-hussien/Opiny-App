import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SurveyHistoryScreen extends StatelessWidget {
  const SurveyHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
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
          Container(
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
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
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            children: [
              const SurveyWidget(
                title: 'Netflix Survey',
                status: 'Completed',
                date: 'March 15, 2025',
                coins: '+2450',
                isCompleted: true,
                statusColor: Color(0xFF059669),
                statusBgColor: Color(0xFFECFDF5),
              ),
              SizedBox(height: 16.h),
              const SurveyWidget(
                title: 'Food Delivery App Survey',
                status: 'Pending Review',
                date: 'March 10, 2025',
                coins: '+400',
                isCompleted: false,
                statusColor: Color(0xffD97706),
                statusBgColor: Color(0xFFFFFBEB),
              ),
              SizedBox(height: 16.h),
              const SurveyWidget(
                title: 'Social Media Usage',
                status: 'Disqualified',
                date: 'March 8, 2025',
                coins: '+0',
                isCompleted: false,
                statusColor: Color(0xffE11D48),
                statusBgColor: Color(0xFFFFF1F2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SurveyWidget extends StatelessWidget {
  const SurveyWidget({
    super.key,
    required this.title,
    required this.status,
    required this.date,
    required this.coins,
    required this.statusColor,
    required this.statusBgColor,
    this.isCompleted = false,
  });

  final String title;
  final String status;
  final String date;
  final String coins;
  final Color statusColor;
  final Color statusBgColor;
  final bool? isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.45,
                child: Text(
                  title,
                  style: TextStyle(
                    color: const Color(0xFF1E1B4B),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  color: statusBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(100.r)),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(
                  color: const Color(0xFF475569),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              Text(
                '$coins Coins',
                style: TextStyle(
                  color: const Color(0xFF475569),
                  fontWeight: FontWeight.w400,
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
              isCompleted != true
                  ? const SizedBox.shrink()
                  : Row(
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
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
