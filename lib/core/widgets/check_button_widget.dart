import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opiny_app/core/widgets/custom_text_rich.dart';

class CheckButton extends StatefulWidget {
  const CheckButton({super.key});

  @override
  CheckButtonState createState() => CheckButtonState();
}

class CheckButtonState extends State<CheckButton> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked; // Toggle state
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 200), // Animation duration
            padding: EdgeInsets.symmetric(
              horizontal: 2.w,
              vertical: 4.h,
            ),
            decoration: BoxDecoration(
              color: isChecked ? const Color(0xFF4F46E5) : Colors.transparent,
              border: Border.all(
                color: const Color(0xFF4F46E5),
                width: 3.w,
              ),
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: isChecked
                  ? [
                      BoxShadow(
                        color: const Color(0xFF4F46E5).withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 1), // Shadow position
                      ),
                    ]
                  : [], // No shadow when not clicked
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/svgs/check_icon.svg',
                colorFilter: ColorFilter.mode(
                  isChecked ? Colors.white : Colors.transparent,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          SizedBox(width: 12.w),

          Expanded(
            child: RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp, // Adjust font size if needed
                  color: Colors.black, // Default text color
                ),
                children: const [
                  TextSpan(text: 'I agree to the '),
                  TextSpan(
                    text: 'Privacy Policy ',
                    style: TextStyle(
                      color: Color(0xFF4F46E5), // Blue color
                    ),
                  ),
                  TextSpan(text: 'and '),
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      color: Color(0xFF4F46E5), // Blue color
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
