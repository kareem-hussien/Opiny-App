import 'package:flutter/material.dart';

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
                  const SizedBox(width: 8),
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
          const SizedBox(height: 12),
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
