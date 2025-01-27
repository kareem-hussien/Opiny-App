import 'package:flutter/material.dart';
import 'package:opiny_app/features/auth/widgets/login_body.dart';
import 'package:opiny_app/features/auth/widgets/register_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RegisterBody(),
    );
  }
}
