import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PremuimActive extends StatelessWidget {
  const PremuimActive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Premium Offers',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPremiumActiveCard(),
            SizedBox(height: 16.h),
            _buildPremiumBenefits(),
            SizedBox(height: 16.h),
            _buildExclusivePremiumOffers(),
          ],
        ),
      ),
    );
  }

  Widget _buildPremiumActiveCard() {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF7C3AED),
            Color(0xFF4F46E5),
          ],
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Premium Active",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "Valid until March 15, 2025",
                style: TextStyle(
                  color: Color(0xFFC7D2FE),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 28.r,
            backgroundColor: Color(0XffFFFFFF).withOpacity(0.2),
            child: SvgPicture.asset('assets/images/svgs/tag.svg'),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumBenefits() {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Premium Benefits",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1B4B)),
          ),
          SizedBox(height: 8.h),
          _benefitTile(
            "assets/images/svgs/rewards_icon.svg",
            "2x Rewards Boost",
            "Earn double coins on all tasks",
            Color(0XffF59E0B),
          ),
          _benefitTile(
            "assets/images/svgs/exclusive_icon.svg",
            "Exclusive Rewards",
            "Access to premium-only rewards",
            Color(0xFF10B981),
          ),
          _benefitTile(
            "assets/images/svgs/proiority_icon.svg",
            "Priority Support",
            "24/7 premium customer service",
            Color(0Xff3B82F6),
          ),
        ],
      ),
    );
  }

  Widget _benefitTile(
      String icon, String title, String subtitle, Color color) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 14.h,horizontal: 15.w),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(icon)),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildExclusivePremiumOffers() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Exclusive Premium Offers",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.h),
          _offerTile("Amazon Gift Card", "8,000 coins", Colors.purple,
            "assets/images/svgs/gift_icon.svg",
          ),
          _offerTile(
              "Spotify Premium", "5,000 coins", Colors.red,
            "assets/images/svgs/spotify.svg",
          ),
        ],
      ),
    );
  }

  Widget _offerTile(String title, String price, Color color, String icon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.r),
        // border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: SvgPicture.asset(icon)),
              SizedBox(width: 12.w),
              SizedBox(
                width: 95.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Premium Price: $price",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 6.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: color,
            ),
            child: Center(
              child: Text("Claim", style: TextStyle(color: Colors.white),),
            ),

          )
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: color,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(8.r),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: Text("Claim", style: TextStyle(color: Colors.white)),
          // ),
        ],
      ),
    );
  }
}