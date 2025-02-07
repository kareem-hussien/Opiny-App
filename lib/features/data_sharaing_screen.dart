import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class DataSharingScreen extends StatefulWidget {
  const DataSharingScreen({super.key});

  @override
  State<DataSharingScreen> createState() => _DataSharingScreenState();
}

class _DataSharingScreenState extends State<DataSharingScreen> {
  bool isSharingEnabled = true;
  bool autoShare = false;
  bool dataSafety = true;
  bool notifications = true;
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
          'Share & Earn Settings',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          SvgPicture.asset("assets/images/svgs/notification_icon.svg"),
          const SizedBox(width: 10),

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
          child:SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Data Sharing Card
                  Container(
                    padding: EdgeInsets.all(24.sp),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0XFF4F46E5),
                          Color(0XFF2563EB),
                        ],
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
                          children: [
                            Text(
                              "Data Sharing",
                              style: TextStyle(color: Colors.white, fontSize: 24.sp, fontWeight: FontWeight.bold),
                            ),
                            FlutterSwitch(
                              width: 45.w,
                              height: 25.h,
                              value: isSharingEnabled,
                              borderRadius: 15.0,
                              padding: 4.sp,
                              activeColor: Colors.white,
                              activeToggleColor:const Color(0XFF4F46E5),
                              inactiveColor: Colors.white38,
                              onToggle: (val) {
                                setState(() {
                                  isSharingEnabled = val;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: 254.w,
                          child: Text(
                            "Control your data sharing preferences",
                            style: TextStyle(color: Colors.white70, fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        Container(
                          padding: EdgeInsets.all(12.sp),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.wifi, color: Colors.white),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  "Currently Sharing\n15GB for next 18 hours",
                                  style: TextStyle(color: Colors.white, fontSize: 16.sp,fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24.h),

                  // Sharing Preferences
              Container(
                padding: EdgeInsets.all(24.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sharing Preferences",
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                    ),

                    SizedBox(height: 10.h),

                    // Preferences List
                    PreferenceTile(
                      icon:"assets/images/svgs/schedule_icon.svg",
                      title: "Auto-Share Schedule",
                      subtitle: "Set automatic sharing times",
                      value: autoShare,
                      onToggle: (val) {
                        setState(() {
                          autoShare = val;
                        });
                      }, color:const Color(0XFF4F46E5),
                    ),
                    SizedBox(height: 24.h,),
                    PreferenceTile(
                      icon:"assets/images/svgs/safety_icon.svg",
                      title: "Data Safety Limit",
                      subtitle: "Keep minimum 5GB reserved",
                      value: dataSafety,
                      onToggle: (val) {
                        setState(() {
                          dataSafety = val;
                        });
                      },
                        color:const Color(0XFF2563EB)
                    ),
                    SizedBox(height: 24.h,),

                    PreferenceTile(
                      icon:"assets/images/svgs/notification.svg",
                      title: "Sharing Notifications",
                      subtitle: "Get alerts for sharing activity",
                      value: notifications,
                      onToggle: (val) {
                        setState(() {
                          notifications = val;
                        });
                      },
                        color:const Color(0XFF059669)
                    ),
                  ],
                ),
              )
                ],
              ),
            ),
          ),
      ),

    );
  }

}
class PreferenceTile extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final bool value;
  final Function(bool) onToggle;
  final Color color;

  PreferenceTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onToggle, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: const Color(0XFFF8FAFC)
      ),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Row(
          children: [
            // Icon(icon, color: Colors.blue),
            Container(
                padding: EdgeInsets.symmetric(vertical: 14.h,horizontal: 15.w),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: SvgPicture.asset(icon)),
            SvgPicture.asset(icon,),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400)),
                  SizedBox(height: 4.h),
                  Text(subtitle, style: TextStyle(color: Colors.grey.shade600, fontSize: 14.sp,fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            FlutterSwitch(
              width: 45.w,
              height: 25.h,
              value: value,
              borderRadius: 15.0,
              padding: 4.sp,
              activeColor: const Color(0XFF4F46E5),
              inactiveColor: Colors.grey.shade300,
              onToggle: onToggle,
            ),
          ],
        ),
      ),
    );
  }
}
