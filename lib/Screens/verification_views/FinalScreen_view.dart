import 'package:flutter_application_1/Screens/Auth_Screens.dart/SignIn_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset('assets/logo.png').pt(64).pb(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                " flutter_application_1",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue[900]),
              )
            ],
          ).pb(24),
          Text(
            "Please Select the Language",
            style: TextStyle(fontSize: 20),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Positioned(
                    bottom: -10, child: Image.asset('assets/backward.png'))
              ],
            ),
          ),
          Positioned(
              child: Container(
            height: 50,
            width: 400,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SigninView()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFFE4E2D),
              ),
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 21,
                ),
              ),
            ),
          ).pl(10).pb(10)),
        ],
      )),
    );
  }
}
