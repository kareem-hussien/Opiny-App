import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          'Privacy Policy',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
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
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader('Last updated: January 15, 2025'),
              SizedBox(height: 16.h),
              _buildSection(
                title: 'Introduction',
                content:
                'We respect your privacy and are committed to protecting your personal data. This privacy policy explains how we collect, use, and safeguard your information.',
              ),
              SizedBox(height: 24.h),
              _buildIconSection(
                iconPath: 'assets/images/svgs/database_icon.svg',
                title: 'Data We Collect',
                items: [
                  'Personal information (name, email, phone number)',
                  'Device information and usage statistics',
                  'Survey responses and feedback',
                ],
              ),
              SizedBox(height: 24.h),
              _buildIconSection(
                iconPath: 'assets/images/svgs/dafe_icon.svg',
                title: 'How We Use Your Data',
                items: [],
                children: [
                  _buildSubSection('Service Improvement',
                      'We analyze usage patterns to enhance user experience and app functionality'),
                  _buildSubSection('Communication',
                      'Sending important updates and promotional content'),
                ],
              ),
              SizedBox(height: 16.h),
              _buildIconSection(
                iconPath: 'assets/images/svgs/your_right.svg',
                title: 'Your Rights',
                items: [],
                children: [
                  _buildClickableRow('Request Data Export'),
                  SizedBox(height: 12.h),
                  _buildClickableRow('Delete Account'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(String text) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xFF64748B),
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
    );
  }

  Widget _buildSection({required String title, required String content}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF0F172A),
              fontWeight: FontWeight.w600,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 14.h),
          Text(
            content,
            style: TextStyle(
              color: const Color(0xFF475569),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconSection({
    required String iconPath,
    required String title,
    List<String>? items,
    List<Widget>? children,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: 12.w),
              Text(
                title,
                style: TextStyle(
                  color: const Color(0xFF0F172A),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          if (items != null)
            ...items.map((item) => _buildListItem(item)).toList(),
          if (children != null) ...children,
        ],
      ),
    );
  }

  Widget _buildListItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/svgs/right_icon.svg'),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: const Color(0xFF475569),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubSection(String title, String content) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      margin: EdgeInsets.only(top: 16.h),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF0F172A),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 14.h),
          Text(
            content,
            style: TextStyle(
              color: const Color(0xFF475569),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClickableRow(String text) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: const Color(0xFF0F172A),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          const Icon(Iconsax.arrow_right_3, color: Color(0xFF94A3B8)),
        ],
      ),
    );
  }
}
