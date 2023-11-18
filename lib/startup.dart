import 'package:aviz/presentation/screens/ads_screen.dart';
import 'package:aviz/presentation/screens/login_screen.dart';
import 'package:aviz/presentation/screens/onboarding_screen.dart';
import 'package:aviz/presentation/screens/signup_screen.dart';
import 'package:aviz/presentation/screens/verification_phone_login_screen.dart';
import 'package:aviz/presentation/screens/verification_phone_signup_screen.dart';
import 'package:flutter/material.dart';

class Startup extends StatelessWidget {
  const Startup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sh',
      ),
      home: const AdsScreen(),
    );
  }
}
