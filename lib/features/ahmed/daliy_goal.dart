import 'package:flutter/material.dart';
import 'package:opiny_app/features/ahmed/redeem.dart';

const one = 'assets/one.png';
const two = 'assets/two.png';
const three = 'assets/three.png';

class DaliyGoal extends StatelessWidget {
  const DaliyGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        leading: const BackButton(),
        title: const Text(
          "Watch & Earn",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: backgroundMainColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              " 💰 2,450",
              style: TextStyle(
                color: Color(0xFF4F46E5),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10)
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
          child: const DaliyGoalBody()),
    );
  }
}

class DaliyGoalBody extends StatelessWidget {
  const DaliyGoalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16 ),
            const CardWidget(),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Availble Videos",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset(one),
                  const SizedBox(height: 10),
                  Image.asset(two),
                  const SizedBox(height: 10),
                  Image.asset(three),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Watch History",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(width: 10),
                      Text("Today"),
                    ],
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200,
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                    title: const Text("Smart Home Setup"),
                    subtitle: const Text("Completed . +100 coins \n earnd"),
                    trailing: const Text(
                      "2h ago",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200,
                      ),
                      padding: const EdgeInsets.all(15),
                      child: const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      ),
                    ),
                    title: const Text("Fitness Tracker Review"),
                    subtitle: const Text("Completed • +150 coins earned"),
                    trailing: const Text(
                      "4h ago",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF7C3AED),
              Color(0Xff4F46E5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daily Goal",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text("Watch 5 more videos to earn bonus",
                          style: TextStyle(color: Color(0xFFC7D2FE), fontSize: 16)),
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurpleAccent.withOpacity(0.4),
                    ),
                    child: const Icon(Icons.play_arrow, color: Colors.white)),
              ],
            ),
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
                activeColor: Colors.white,
                // Blue-purple color
                inactiveColor: const Color(0xFFFFFFFF).withOpacity(.2),
                // Light gray
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 8),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "5/10 Videos",
                  style: TextStyle(
                    color: Color(0xFFC7D2FE),
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Bonus: +500 coins",
                  style: TextStyle(
                    color: Color(0xFFC7D2FE),
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
