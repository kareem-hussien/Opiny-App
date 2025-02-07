import 'package:flutter/material.dart';

class TextformfieldDescribe extends StatelessWidget {
  const TextformfieldDescribe({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 5,
      decoration: InputDecoration(
        hintText: 'Describe your feature suggestion in detail',
        hintStyle: TextStyle(color: Colors.grey), // Light grey hint
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        filled: true,
        fillColor: Colors.white, // White background
      ),
    );
  }
}
