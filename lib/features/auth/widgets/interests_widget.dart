import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterestsWidget extends StatelessWidget {
  const InterestsWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            'Your Interested',
            style: TextStyle(
              color: const Color(0xFF1E1B4B),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 12.h),


          /// Interest Chips
          Wrap(
            spacing: 12.w,
            runSpacing: 12.h,
            children: [
              _buildInterestChip('Technology', isSelected: true),
              _buildInterestChip('Fashion'),
              _buildInterestChip('Sports'),
              _buildInterestChip('Food'),
              _buildInterestChip('Travel'),
              _buildInterestChip('Movies'),
            ],
          ),
        ],
      ),
    );
  }

  // Chip Builder Function
  Widget _buildInterestChip(String label, {bool isSelected = false}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFF5A4CE6) : const Color(0xFFF2F2F6),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : const Color(0xFF1E1B4B),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
