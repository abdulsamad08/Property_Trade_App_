import 'dart:async';
import 'package:craftsman_ui/view/continue_with.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ContinueWith()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Center(
          child: Image(
            image: AssetImage(ImageConstants.splashLogo),
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ),
      ),
    );
  }
}
