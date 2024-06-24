import 'package:flutter_application_1/Screens/verification_views/VerificationFour_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class VerificationThree extends StatefulWidget {
  const VerificationThree({super.key});

  @override
  State<VerificationThree> createState() => _VerificationThreeState();
}

class _VerificationThreeState extends State<VerificationThree> {
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
              "Eat",
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
              "Easy,healthy meal plans you'll love.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            left: 100,
            bottom: 120,
            child: Text(
              "Gluten-free,vegetarian,pescatarisan & vegan options.",
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
                          builder: (context) => VerificationFour()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFE4E2D), // Button color
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
