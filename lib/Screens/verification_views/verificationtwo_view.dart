import 'package:flutter_application_1/Screens/verification_views/VerificationThree_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class VerificationTwo extends StatefulWidget {
  const VerificationTwo({super.key});

  @override
  State<VerificationTwo> createState() => _VerificationTwoState();
}

class _VerificationTwoState extends State<VerificationTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(bottom: -50, child: Image.asset('assets/Group.png')),
          Center(
            child: Image.asset(
              'assets/Group2.png',
              width: 300,
            ),
          ),
          Positioned(
            left: 200,
            bottom: 150,
            child: Text(
              "Train",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 150,
            bottom: 130,
            child: Text(
              "Work out with world-class trainers.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: 80,
            bottom: 120,
            child: Text(
              "HIIT,boxing,pilates,muscle building & more for home or gym.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
              bottom: 20,
              child: Container(
                height: 50,
                width: 400,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationThree()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFE4E2D),
                  ),
                  child: Text(
                    "Start 7-Day Free trail",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 21,
                    ),
                  ),
                ),
              ).pl(10)),
        ],
      ),
    );
  }
}
