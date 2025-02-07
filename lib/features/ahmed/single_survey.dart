import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opiny_app/features/ahmed/redeem.dart';

class SingleSurvey extends StatelessWidget {
  const SingleSurvey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: const BackButton(),
        title: const Text(
          "Netflix Survey",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: backgroundMainColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/svgs/db.svg",
                ),
                const Text(
                  " +500",
                  style: TextStyle(
                    color: Color(0xFF4F46E5),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
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
          child: const SingleSurveyBody()),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  side: const WidgetStatePropertyAll(
                      BorderSide(color: mainColor)),
                  padding: const WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),
                child: const Text(
                  "Previous",
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(mainColor),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  padding: const WidgetStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),
                child: const Text(
                  "Next", style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleSurveyBody extends StatelessWidget {
  const SingleSurveyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 17),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Question 1 of 10",
                  style: TextStyle(
                    color: Color(0xFF1E1B4B),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "2 min left",
                  style: TextStyle(
                    color: Color(0xFF64748B),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 6,
                // Adjust thickness
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
                // Hide thumb
                overlayShape: const RoundSliderOverlayShape(
                    overlayRadius: 0), // Remove overlay effect
              ),
              child: Slider(
                max: 100,
                min: 0,
                value: 30,
                // Set value to match the progress in the image
                activeColor: const Color(0xFF4F46E5),
                // Blue-purple color
                inactiveColor: const Color(0xFFF1F5F9),
                // Light gray
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              constraints: const BoxConstraints(minWidth: double.infinity),
              padding: const EdgeInsets.all(24),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How Often do you watch Netflix?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1E1B4B),
                    ),
                  ),
                  SizedBox(height: 16),
                  CheckBoxWidgetTile(text: "Daily"),
                  SizedBox(height: 12),
                  CheckBoxWidgetTile(text: "Few times a week"),
                  SizedBox(height: 12),
                  CheckBoxWidgetTile(text: "Once a week"),
                  SizedBox(height: 12),
                  CheckBoxWidgetTile(text: "Few times a month"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFEEF2FF),
                borderRadius: BorderRadius.circular(24),
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Image.asset('assets/images/svgs/video_icon2.png'),
                      // Container(
                      //   padding: const EdgeInsets.all(15),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     color: mainColor,
                      //   ),
                      //   child: const Icon(Icons.calendar_month_outlined),
                      // ),
                      const SizedBox(width: 10),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.56,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Netflix Viewing Habits",
                              style: TextStyle(
                                  color: Color(0xFF1E1B4B),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Survey by Netflix Research Team",
                              style: TextStyle(
                                  color: Color(0xFF475569),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.access_time,
                          color: Color(0xFF475569), size: 14),
                      Text("5 min",
                          style: TextStyle(
                              color: Color(0Xff475569), fontSize: 14)),
                      SizedBox(width: 30),
                      Icon(Icons.access_time,
                          color: Color(0xFF475569), size: 14),
                      Text("10 Questions",
                          style:
                              TextStyle(color: Color(0Xff475569), fontSize: 14))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckBoxWidgetTile extends StatelessWidget {
  const CheckBoxWidgetTile(
      {super.key, this.selected = false, required this.text});

  final bool selected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      // margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: selected ? mainColor : const Color(0xFFE2E8F0), width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Checkbox(
            value: false,
            activeColor: mainColor,
            checkColor: Colors.white,
            side: const BorderSide(color: mainColor, width: .5),
            onChanged: (value) {},
            shape: const CircleBorder(),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF334155),
            ),
          ),
        ],
      ),
    );
  }
}
