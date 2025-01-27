import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45.h,
      child: Row(
        children: [
          Expanded(child: Container(height: 1.4.h, margin: EdgeInsets.only(left: 8.w, right: 8.w), color: const Color(0XffE2E8F0))),
          Text(text, style: TextStyle(color: const Color(0xFF64748B), fontSize: 14.sp, fontWeight: FontWeight.w400)),
          Expanded(child: Container(height: 1.4.h, margin: EdgeInsets.only(left: 8.w, right: 8.w), color: const Color(0XffE2E8F0))),
        ],
      ),
    );
  }
}
