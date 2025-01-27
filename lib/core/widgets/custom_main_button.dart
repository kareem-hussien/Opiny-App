import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    this.titleName,
    required this.bgColor,
    this.textColor,
    this.onTap,
    this.widget,
    this.haveRow = false,
  });

  final String? titleName;
  final Color bgColor;
  final Color? textColor;
  final bool haveRow;
  final Widget? widget;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 18.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: bgColor,
        ),
        child: Center(
          child: haveRow ? widget : Text(
            titleName!,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
