import 'package:flutter/material.dart';

class RewardContainer extends StatelessWidget {
  const RewardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFffffff),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
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
              const SizedBox(width: 5.0),
              const Expanded(
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
                    SizedBox(height: 11),
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
