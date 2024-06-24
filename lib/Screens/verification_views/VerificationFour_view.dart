import 'package:flutter_application_1/Screens/verification_views/FinalScreen_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class VerificationFour extends StatefulWidget {
  const VerificationFour({super.key});

  @override
  State<VerificationFour> createState() => _VerificationFourState();
}

class _VerificationFourState extends State<VerificationFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(bottom: -50, child: Image.asset('assets/Group.png')),
          Center(
            child: Image.asset(
              'assets/Group4.png',
              width: 350,
            ),
          ),
          Positioned(
            left: 200,
            bottom: 150,
            child: Text(
              "Live",
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
              "Mindfulness to calm the chaos.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: 120,
            bottom: 120,
            child: Text(
              "Meditations, sleep visualizations & practical tips.",
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
                    MaterialPageRoute(builder: (context) => FinalScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFFE4E2D),
                ),
                child: Text(
                  "Start 7-Day Free Trial",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                  ),
                ),
              ),
            ).pl(10),
          ),
        ],
      ),
    );
  }
}
