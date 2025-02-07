import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opiny_app/features/suggest_features/presentation/widgets/textformfield_describe.dart';

class SuggestFeatures extends StatelessWidget {
  const SuggestFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Suggest Features",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFE0E7FF),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                SvgPicture.asset('assets/svgs/i.svg'),
                const SizedBox(width: 4),
                const Text("+500", style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Suggest New Feature',
                // style: TextStyles.font16RegularsemiBoldtextsuggets,
              ),
              const SizedBox(height: 10),
              Text(
                'Share your ideas to help us improve. Earn 500 coins for accepted suggestions!',
                // style: TextStyles.font14Regulartextsuggets,
              ),
              const SizedBox(height: 24),
              Text(
                "Feature Title",
                // style: TextStyles.font16RegularsemiBoldtextsuggets,
              ),
              const SizedBox(height: 10),
              CustomTextFormFieldWidget(
                hintText: "Enter a brief title",
                // hintStyle: TextStyles.font14Regular,
              ),
              const SizedBox(height: 10),
              Text(
                "Category",
                // style: TextStyles.font16RegularsemiBoldtextsuggets,
              ),
              const SizedBox(height: 10),
              CustomTextFormFieldWidget(
                suffixIcon: const Icon(
                  Icons.arrow_drop_down,
                  size: 33,
                ),
                hintText: "User Interface",
                hintStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Description",
                // style: TextStyles.font16RegularsemiBoldtextsuggets,
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              TextformfieldDescribe(),
              const SizedBox(height: 10),
              // verticalSpace(),
              CustomMainButton(

                text: "Submit Suggestion",
                color: const Color(0xff4F46E5),
              ),
              const SizedBox(height: 24),
              SuggestionCard(
                title: 'Dark Mode Support',
                status: 'Pending',
                description:
                    'Add dark mode support for better visibility in low light conditions...',
                submittedDate: 'Submitted: Feb 15, 2025',
                commentsCount: 24,
              ),
              const SizedBox(height: 15),
              SuggestionCard(
                title: 'Voice Commands',
                status: 'Approved',
                description:
                    'Add dark mode support for better visibility in low light conditions...',
                submittedDate: 'Submitted: Feb 15, 2025',
                commentsCount: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SuggestionCard extends StatelessWidget {
  final String title;
  final String status;
  final String description;
  final String submittedDate;
  final int commentsCount;

  const SuggestionCard({
    super.key,
    required this.title,
    required this.status,
    required this.description,
    required this.submittedDate,
    required this.commentsCount,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor = status == 'Pending' ? Colors.orange : Colors.green;

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: statusColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Text(
            description,
            style: TextStyle(color: Colors.grey[800]),
          ),
          SizedBox(height: 8.0),
          Text(
            submittedDate,
            style: TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.comment, color: Colors.grey),
              SizedBox(width: 4.0),
              Text(
                '$commentsCount',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.symmetric(horizontal: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF6F1FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.emoji_events,
                      color: Color(0xFF7C3AED),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  // Title & Subtitle
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Achievement Badges",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Collect unique badges",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff64748B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Level Badge
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFF1E8FF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Level 3",
                  style: TextStyle(
                    color: Color(0xFF9064FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          // Star Ratings
          Row(
            children: List.generate(5, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(
                  index < 3 ? Icons.star : Icons.star_border,
                  color: index < 3 ? Colors.amber : Colors.grey[300],
                  size: 25,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class RewardContainer extends StatelessWidget {
  const RewardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 46,
                width: 46,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: const Color(0xFFE0E7FF),
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.card_giftcard,
                  color: Color(0xFF4F46E5),
                  size: 30,
                ),
              ), // Gift icon
              SizedBox(width: 5.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Special Rewards",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(width: 11.0),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            // width: 40.0,
                            child: LinearProgressIndicator(
                              value: 0.75, // 75% progress
                              backgroundColor: Color(0xffE5E7EB),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFF4F46E5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          '75%',
                          style: TextStyle(
                            color: Color(0xFF4A86E8), // Dark blue text
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.0),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomTextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final bool? obscureText;
  final bool? autofocus;
  final bool? autocorrect;
  final bool? enableSuggestions;
  final bool? readOnly;
  final bool? showCursor;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final bool isChat;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final FormFieldSetter<String>? onSaved;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  final Iterable<String>? autofillHints;
  final EdgeInsets? contentPadding;
  final EdgeInsets? padding;
  final bool? expands;
  final int? maxLines;
  final int? minLines;
  final ValueChanged<String>? onFieldSubmitted;
  final List<TextInputFormatter>? buildCounter;
  final ScrollPhysics? scrollPhysics;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? focusedborderColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? height;
  final TextAlignVertical? textAlignVertical;
  final FocusNode? focusNode;

  const CustomTextFormFieldWidget(
      {super.key,
        this.controller,
        this.isChat = false,
        this.padding,
        this.textStyle,
        this.hintStyle,
        this.hintText,
        this.labelText,
        this.backgroundColor,
        this.helperText,
        this.focusedborderColor,
        this.borderWidth,
        this.errorText,
        this.obscureText = false,
        this.autofocus = false,
        this.autocorrect = true,
        this.enableSuggestions = true,
        this.readOnly = false,
        this.showCursor,
        this.maxLength,
        this.keyboardType,
        this.textInputAction,
        this.onChanged,
        this.validator,
        this.borderRadius,
        this.onSaved,
        this.inputFormatters,
        this.prefixIcon,
        this.suffixIcon,
        this.enabled,
        this.autofillHints,
        this.contentPadding,
        this.expands,
        this.maxLines,
        this.minLines,
        this.onFieldSubmitted,
        this.buildCounter,
        this.scrollPhysics,
        this.onTap,
        this.height,
        this.textAlignVertical,
        this.focusNode,
        this.borderColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textStyle ??
          TextStyle(fontSize: 14.sp, color: Colors.black),
      autofillHints: autofillHints,
      onTapOutside: isChat ? null : (event) => FocusScope.of(context).unfocus(),
      controller: controller,
      obscureText: obscureText!,
      autofocus: autofocus!,
      autocorrect: autocorrect!,
      focusNode: focusNode,
      enableSuggestions: enableSuggestions!,
      readOnly: readOnly!,
      showCursor: showCursor,
      maxLength: maxLength,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      validator: validator,
      onSaved: onSaved,
      inputFormatters: inputFormatters,
      textAlignVertical: textAlignVertical,
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: focusedborderColor ?? Colors.blue,
            width: borderWidth ?? 1.3.sp,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: borderWidth ?? 1.3.sp,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: borderWidth ?? 1.3.sp,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: Colors.red,
            width: borderWidth ?? 1.3.sp,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey,
            width: borderWidth ?? 1.3.sp,
          ),
        ),
        labelText: labelText,
        hintStyle: hintStyle ??
            TextStyle(fontSize: 14.sp, color: Colors.black),
        hintText: hintText,
        helperText: helperText,
        errorText: errorText,
        prefixIcon: prefixIcon,
        filled: true,
        suffixIcon: suffixIcon,
        prefixIconColor: Colors.blue,
        suffixIconColor: Colors.blue,
        enabled: enabled ?? true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 15.w, vertical: height ?? 15.h),
        fillColor: backgroundColor ?? Colors.white,
      ),
      maxLines: isChat ? null : 1,
      minLines: isChat ? null : minLines,
      onFieldSubmitted: onFieldSubmitted,
      scrollPhysics: scrollPhysics,
      onTap: onTap,
    );
  }
}


class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    this.color,
    required this.text,
    this.onTab,
    this.width,
    this.height,
    this.borderraduis,
    this.fontSize,
    this.fontWeight,
    this.textColor,
    this.icon,
  });
  final Color? color;
  final String text;
  final double? width;
  final double? height;
  final double? borderraduis;
  final VoidCallback? onTab;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height ?? 52.h,
      minWidth: width ?? double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderraduis ?? 16.r),
      ),
      color: color ?? Colors.blue,
      onPressed: onTab ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon),
          Text(
            // textAlign: TextAlign.center,
            text,
            style: TextStyle(
              fontSize: fontSize ?? 15.sp,
              fontWeight: fontWeight ?? FontWeight.w600,
              color: textColor ?? Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}