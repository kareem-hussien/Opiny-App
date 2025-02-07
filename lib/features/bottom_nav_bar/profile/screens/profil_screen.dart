import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            color: const Color(0xFF0F172A),
            fontWeight: FontWeight.w600,
            fontSize: 20.sp,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Save',
              style: TextStyle(
                color: const Color(0xFF4F46E5),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 16.h),
                Center(
                  child: Stack(
                    children: [
                      Image.asset('assets/images/pngs/bg_image.png'),
                      Positioned(
                          right: 0.w,
                          bottom: 0.h,
                          child: CircleAvatar(
                            radius: 20.r,
                            backgroundColor: const Color(0xFF4F46E5),
                            child: Center(
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 20.sp,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Change Photo',
                  style: TextStyle(
                    color: const Color(0xFF4F46E5),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 34.h),
                /// Base Data (Full name - Email - Phone number )
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 25.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Full Name
                      Text(
                        'Full Name',
                        style: TextStyle(
                          color: const Color(0xFF334155),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC), // Light background color
                          borderRadius: BorderRadius.circular(12.r), // Rounded corners
                        ),
                        width: double.infinity, // Adjust the width as needed
                        // height: 50, // Adjust the height as needed
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.user,
                              color: const Color(0xFF94A3B8),
                              size: 20.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                  hintText: 'Omar Abdelaziz',
                                  hintStyle: TextStyle(
                                    color: const Color(0xFF000000), // Light gray hint color
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Color(0xFF000000), // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.w),

                      /// Email
                      Text(
                        'Email Address',
                        style: TextStyle(
                          color: const Color(0xFF334155),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC), // Light background color
                          borderRadius: BorderRadius.circular(12.r), // Rounded corners
                        ),
                        width: double.infinity, // Adjust the width as needed
                        // height: 50, // Adjust the height as needed
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.message,
                              color: const Color(0xFF94A3B8),
                              size: 20.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                  hintText: '3omarabdelaziz123@gmail.com',
                                  hintStyle: TextStyle(
                                    color: const Color(0xFF000000), // Light gray hint color
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Color(0xFF000000), // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// Phone Number
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: const Color(0xFF334155),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC), // Light background color
                          borderRadius: BorderRadius.circular(12.r), // Rounded corners
                        ),
                        width: double.infinity, // Adjust the width as needed
                        // height: 50, // Adjust the height as needed
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.mobile,
                              color: const Color(0xFF94A3B8),
                              size: 20.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                  hintText: '+20 1027324902',
                                  hintStyle: TextStyle(
                                    color: const Color(0xFF000000), // Light gray hint color
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Color(0xFF000000), // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),

                /// Second Data (Date - Location)
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 25.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Date of Birth
                      Text(
                        'Date of Birth',
                        style: TextStyle(
                          color: const Color(0xFF334155),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC), // Light background color
                          borderRadius: BorderRadius.circular(12.r), // Rounded corners
                        ),
                        width: double.infinity, // Adjust the width as needed
                        // height: 50, // Adjust the height as needed
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.format_circle,
                              color: const Color(0xFF94A3B8),
                              size: 20.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                  hintText: 'mm/dd/yyyy',
                                  hintStyle: TextStyle(
                                    color: const Color(0xFF000000), // Light gray hint color
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Color(0xFF000000), // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.w),

                      /// Location
                      Text(
                        'Location',
                        style: TextStyle(
                          color: const Color(0xFF334155),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 2.h),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8FAFC), // Light background color
                          borderRadius: BorderRadius.circular(12.r), // Rounded corners
                        ),
                        width: double.infinity, // Adjust the width as needed
                        // height: 50, // Adjust the height as needed
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.location,
                              color: const Color(0xFF94A3B8),
                              size: 20.sp,
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                  hintText: 'Cairo',
                                  hintStyle: TextStyle(
                                    color: const Color(0xFF000000), // Light gray hint color
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: const TextStyle(
                                  color: Color(0xFF000000), // Text color
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),

                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 26.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delete Account',
                        style: TextStyle(
                          color: Color(0xFFE11D48),
                        ),
                      ),
                      Icon(Icons.delete, color: Color(0xFFE11D48),)
                    ],
                  ),
                ),
                SizedBox(height: 19.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
