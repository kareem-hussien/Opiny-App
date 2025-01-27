import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opiny_app/core/extensions/navigation_extension.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8fafc),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back, color: Color(0xFF1E1B4B))),
        title: Text(
          'Invite Friends',
          style: TextStyle(
            fontSize: 20.sp,
            color: const Color(0xFF1E1B4B),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  gradient: const LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [
                      Color(0xFF2563EB),
                      Color(0xFF4F46E5),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/pngs/gift.png',
                      height: 60.h,
                      width: 60.w,
                    ),
                    SizedBox(height: 24.h),
                    Text('Invite Friends & Earn',
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    SizedBox(height: 12.h),
                    Text('Get 1000 coins for each friend who joins',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFFC7D2FE),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Your Referral Code",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Text(
                      "Share this code with your friends",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFF64748B),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 26.h),
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(22.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r),
                          color: const Color(0xFFEEF2FF),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 200.w,
                                    child: Text(
                                      "SARAH2025",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.w, vertical: 9.h),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: const Color(0xFF4F46E5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "copy",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Share via",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 24.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Image.asset('assets/images/pngs/faceBook.png',
                                    height: 48.h, width: 48.w),
                                Text(
                                  "Facebook",
                                  style: TextStyle(fontSize: 12.sp),
                                )
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              children: [
                                Image.asset('assets/images/pngs/twiter.png',
                                    height: 48.h, width: 48.w),
                                Text(
                                  "Twitter",
                                  style: TextStyle(fontSize: 12.sp),
                                )
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/pngs/whatsapp.png',
                                  height: 48.h,
                                  width: 48.w,
                                ),
                                Text(
                                  "Whatsapp",
                                  style: TextStyle(fontSize: 12.sp),
                                )
                              ],
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              children: [
                                Image.asset('assets/images/pngs/more.png',
                                    height: 48.h, width: 48.w),
                                Text(
                                  "More",
                                  style: TextStyle(fontSize: 12.sp),
                                )
                              ],
                            ),
                          ])
                    ]),
              ),
              SizedBox(height: 24.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Referrals",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 24.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 33.w, vertical: 17.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color: const Color(0xFFEEF2FF),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "12",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Total Invites",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0XFF475569),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 16.w,
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 33.w, vertical: 17.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.r),
                              color: const Color(0xFFEEF2FF),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "8,000",
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Coins Earned",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0XFF475569),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/pngs/profile_image.png'),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mike Wilson",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Joined 2 days ago",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFF475569)),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              "+1000",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0XFF22C55E)),
                            ),
                            SizedBox(width: 4.w),
                            SvgPicture.asset("assets/images/svgs/db.svg"),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/pngs/profile_image.png'),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mike Wilson",
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Joined 2 days ago",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFF475569)),
                            )
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Text(
                              "+1000",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0XFF22C55E)),
                            ),
                            SizedBox(width: 4.w),
                            SvgPicture.asset("assets/images/svgs/db.svg"),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
