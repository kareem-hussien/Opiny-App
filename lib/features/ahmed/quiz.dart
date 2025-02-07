import 'package:flutter/material.dart';
import 'package:opiny_app/features/ahmed/redeem.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // backgroundColor: backgroundMainColor,
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          "Movie Quiz",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          const Icon(Icons.access_time, color: Colors.grey),
          const Text("2:45"),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: backgroundMainColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "4/10",
              style: TextStyle(
                color: Color(0xFF4F46E5),
                fontWeight: FontWeight.bold,
              ),
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
          child: const QuizBody()),
    );
  }
}

class QuizBody extends StatelessWidget {
  const QuizBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
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
            const Text(
              "Which movie won the Academy Award for Best Picture in 2025?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1B4B),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Choose the correct answer from the options below.",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF475569),
              ),
            ),
            const SizedBox(height: 40),
            ...List.generate(
              4,
              (index) {
                return CheckBoxWidgetTile(
                  selected: index == 2 ? true : false,
                  onChanged: () {},
                );
              },
            ),
            const SizedBox(height: 32),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFEEF2FF),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/svgs/FRAAM.png'),
                      const Text(
                        "  Fun Fact",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/svgs/FRAAM.png',
                        color: Colors.transparent,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.78,
                        child: const Text(
                          "The Academy Awards, also known as the Oscars, have been celebrating excellence in cinema since 1929.",
                          style: TextStyle(
                            color: Color(0xFF475569),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                      const WidgetStatePropertyAll(Colors.white),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                      ),
                    ),
                    child: const Text(
                      "Skip Question",
                      style: TextStyle(color: Color(0xFF475569)),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                      const WidgetStatePropertyAll(mainColor),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                      ),
                    ),
                    child: const Text(
                      "Next Question",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CheckBoxWidgetTile extends StatelessWidget {
  const CheckBoxWidgetTile({
    super.key,
    this.selected = false,
    required this.onChanged,
  });

  final bool selected;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: selected ? mainColor : const Color(0xFFE2E8F0),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "The Last Horizon",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFF1E1B4B),
            ),
          ),
          Checkbox(
            value: selected,
            onChanged: (value) {
              onChanged();
            },
            activeColor: mainColor,
            checkColor: Colors.white,
            shape: const CircleBorder(),
          )
        ],
      ),
    );
  }
}
