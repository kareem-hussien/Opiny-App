import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opiny_app/features/ahmed/support_single.dart';

const branImage = 'assets/bran.png';
const toDo = 'assets/todo.png';
const div = 'assets/div.png';
const div2 = 'assets/div2.png';
const advanceModePrimaryColor = Color(0xFF4F46E5);

class AdvanceMode extends StatelessWidget {
  const AdvanceMode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: advanceModePrimaryColor,
            leading: const BackButton(
              color: Colors.white,
            ),
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(branImage),
                const SizedBox(width: 5),
                const Text(
                  "Opiny",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50), // Rounded corners at the bottom
              ),
            ),
            actions: [
              const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              const SizedBox(width: 20)
            ],
          ),
          body: const AdvanceModeBody(),
          bottomNavigationBar: Container(
            // color: const Color(0xFFE5E7EB),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Powered by",
                  style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 5),
                Image.asset(
                  branImage,
                  color: const Color(0XFF4F46E5),
                ),
                const SizedBox(width: 5),
                const Text(
                  "Opiny",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6B7280),
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class AdvanceModeBody extends StatelessWidget {
  const AdvanceModeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.deepPurpleAccent,
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage(image),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Advanced Level",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1F2937),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(" 🏆 Expert Surveyor",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF4B5563),
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const Spacer(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "2,450",
                        style: TextStyle(
                          fontSize: 24,
                          color: advanceModePrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Total Points",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF4B5563)),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 40,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: index == 0
                              ? advanceModePrimaryColor
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            index == 0
                                ? Image.asset(toDo)
                                : const Icon(Icons.analytics),
                            const SizedBox(width: 10),
                            Text("Advanced Surveys",
                                style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      index != 0 ? Colors.black : Colors.white,
                                )),
                          ],
                        ),
                      );
                    },
                  )),
              const SizedBox(height: 20),
              const OneCard(),
              const SizedBox(height: 20),
              const TwoCard(),
              const SizedBox(height: 20),
              const ThreeCard()
            ],
          ),
        ),
      ),
    );
  }
}

class OneCard extends StatelessWidget {
  const OneCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          color: advanceModePrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "👑 Premium Survey",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  decoration: BoxDecoration(
                    color: Color(0xFF3730A3).withOpacity(.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Export Level",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    Text(
                      "500",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Points",
                        style: TextStyle(color: Colors.white, fontSize: 14)),
                    SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.access_time, color: Colors.white, size: 14),
                        SizedBox(width: 5),
                        Text("45 min",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 22),
                    const Text("Difficulty",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellowAccent,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset(
                          branImage,
                          width: 15,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Advanced Analytics",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 50)), // Full width, fixed height

                backgroundColor: const WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
              child: const Text(
                "Start Advanced Survey",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4F46E5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TwoCard extends StatelessWidget {
  const TwoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(div),
                    const SizedBox(width: 8),
                    const Text(
                      "Market Research",
                      style: TextStyle(
                          color: Color(0Xff1F2937),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0E7FF),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Hard",
                    style: TextStyle(color: Color(0xFF4F46E5)),
                  ),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    Text(
                      "300",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Points",
                        style:
                            TextStyle(color: Color(0xFF6B7280), fontSize: 14)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.grey),
                        SizedBox(width: 10),
                        Text(
                          "30 min",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 14),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 50)), // Full width, fixed height

                backgroundColor:
                    const WidgetStatePropertyAll(advanceModePrimaryColor),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
              child: const Text(
                "Start Survey",
                style: TextStyle(color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ThreeCard extends StatelessWidget {
  const ThreeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(div2),
                    const SizedBox(width: 5),
                    const Text(
                      "Research Study",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDE9FE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Export",
                    style: TextStyle(color: Color(0xFF7C3AED)),
                  ),
                )

              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 14),
                    Text(
                      "450",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Points",
                        style:
                        TextStyle(color: Color(0xFF6B7280), fontSize: 14)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Colors.grey),
                        SizedBox(width: 10),
                        Text(
                          "40 min",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 50)), // Full width, fixed height

                backgroundColor:
                    const WidgetStatePropertyAll(advanceModePrimaryColor),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
              child: const Text(
                "Start Survey",
                style: TextStyle(color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
