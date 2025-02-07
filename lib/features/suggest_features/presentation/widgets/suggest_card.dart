import 'package:flutter/material.dart';

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
