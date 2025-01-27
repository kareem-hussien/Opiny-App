import 'package:flutter/material.dart';
import 'package:opiny_app/features/onboarding/widgets/choice_body.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  static const String routeName = '/choice';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF2563EB),
              Color(0xFF4F46E5),
            ],
          ),
        ),
        child: const ChoiceBody(),
      ),
    );
  }
}
