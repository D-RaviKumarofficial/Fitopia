import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/verification_views/VerificationOne_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => VerificationOne()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/logo.png'),
          ),
          Positioned(
              bottom: -50,
              child: SizedBox(
                child: Image.asset('assets/Group.png'),
              ))
        ],
      ),
    );
  }
}
