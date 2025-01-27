import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTextRich extends StatelessWidget {
  final String text;
  final String clickableText;
  final TextStyle? textStyle;
  final TextStyle? clickableTextStyle;
  final VoidCallback? onTap;

  const CustomTextRich({
    super.key,
    required this.text,
    required this.clickableText,
    this.textStyle,
    this.clickableTextStyle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: textStyle,
        children: [
          TextSpan(text: text),
          TextSpan(
            text: ' $clickableText',
            style: clickableTextStyle,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
