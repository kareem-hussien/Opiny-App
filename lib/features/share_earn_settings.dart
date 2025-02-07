import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShareEarn extends StatefulWidget {
  const ShareEarn({super.key});

  @override
  State<ShareEarn> createState() => _ShareEarnState();
}

class _ShareEarnState extends State<ShareEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Share & Earn",
          style: TextStyle(
            color: const Color(0xFF1E1B4B),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 10.h,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E7FF),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/svgs/wifi_icon.svg',
                ),
                Text(
                  "25GB",
                  style: TextStyle(
                    color: const Color(0xFF1E1B4B),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/svgs/notification_icon.svg",
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _availableDataCard(),
                SizedBox(height: 16.h),
                _shareDataOptions(),
                SizedBox(height: 16.h),
                _topSharers(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _availableDataCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24.sp),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF4F46E5),
            Color(0xFF2563EB),
          ],
        ),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Available Data",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(height: 8.h),
                    Text(
                      "Share your unused data to earn rewards",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFFC7D2FE),
                      ),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(
                    0.2,
                  ),
                  borderRadius: BorderRadius.circular(100.r),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 20.w,
                  horizontal: 12.h,
                ),
                child: SvgPicture.asset(
                  "assets/images/svgs/wifi_icon.svg",
                  color: Colors.white,
                  width: 30.w,
                  height: 24.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Stack(
            children: [
              Container(
                height: 8.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              Container(
                height: 8.h,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ],
          ),

          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("25GB Available",
                  style: TextStyle(fontSize: 14.sp, color: Colors.white)),
              Text(
                "40GB Total",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFFC7D2FE),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

  Widget _shareDataOptions() {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Share Data',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E1B4B)
                ),
              ),
              Text(
                'History',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4F46E5)
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          _shareOptionTile("Share 5GB", "Earn 500 points • 24 hours", "Share"),
          _shareOptionTile("Share 10GB", "Earn 1000 points • 24 hours", "Share"),
        ],
      ),
    );
  }

  Widget _topSharers() {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Top Sharers",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 8.h),
          _sharerTile("Mike Johnson", "Shared 50GB", "5,000 pts"),
          _sharerTile("Lisa Park", "Shared 45GB", "4,500 pts"),
        ],
      ),
    );
  }

  Widget _sharerTile(String name, String subtitle, String points) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.person)),
      title: Text(name,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
      subtitle: Text(subtitle,
          style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
      trailing: Text(
        points,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF4F46E5),
        ),
      ),
    );
  }

  Widget _shareOptionTile(String title, String subtitle, String buttonText) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        color: Color(0xFFEEF2FF),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/pngs/share.png'),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                Text(subtitle,
                    style: TextStyle(fontSize: 12.sp, color: Colors.black54)),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 16.w),
            decoration: BoxDecoration(
              color: const Color(0xFF4F46E5),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Center(
              child: Text(
                'Share',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
