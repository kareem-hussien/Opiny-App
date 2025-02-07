// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class UnlockJournyScreen extends StatelessWidget {
//   const UnlockJournyScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffCED4DA),
//       body: Container(
//         height: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//             colors: [
//               Color(0xffF5F3FF),
//               Color(0xffFFFFFF),
//             ],
//             stops: [0.15, 3.0],
//           ),
//         ),
//         child: SafeArea(
//             child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 28.h),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       "assets/images/div.png",
//                     ),
//                     const SizedBox(width: 16),
//                     Image.asset(
//                       "assets/images/div (1).png",
//                     ),
//                     const SizedBox(width: 16),
//                     Image.asset("assets/images/div (2).png"),
//                   ],
//                 ),
//                 const SizedBox(height: 25),
//                 Text(
//                   "Unlock Your Journey",
//                   style: TextStyles.font24Boldunlocktextcolor
//                       .copyWith(fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 25),
//                 Text(
//                   textAlign: TextAlign.center,
//                   "Level up your gaming experience with exclusive rewards, achievements, and special perks!",
//                   style: TextStyles.font16Regularunlocktext2color,
//                 ),
//                 const SizedBox(height: 40),
//                 AchievementCard(),
//                 const SizedBox(height: 10),
//                 RewardContainer(),
//                 const SizedBox(height: 10),
//                 RewardContainer(),
//                 const SizedBox(height: 10),
//                 CustomMainButton(
//                   color: Color(0xff7C3AED),
//                   text: "Start Your Journey",
//                 ),
//               ],
//             ),
//           ),
//         )),
//       ),
//     );
//   }
// }
