import 'package:flutter_application_1/Screens/Auth_Screens.dart/Password_view.dart';
import 'package:flutter_application_1/Screens/Auth_Screens.dart/SignIn_view.dart';
import 'package:flutter_application_1/Screens/Subscription_views/Home_Subscription_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
            ).pb(80),
            Image.asset('assets/name.png').pb(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "What's your name?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ).pb(16),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: 'First Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 104, 89, 89))),
              ),
            ).pb(16),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: 'Second Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 104, 89, 89))),
              ),
            ).pb(16),
            RichText(
                text: TextSpan(
              text:
                  'By creating an account, I accept the flutter_application_1',
              style: TextStyle(fontSize: 13, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: ' privacy policy',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFFFE4E2D)),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                TextSpan(
                  text: ' and ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: 'Terms and conditions',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFFFE4E2D)),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            )).pb(8),
            Container(
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(
                      0xFFFE4E2D), // Set background color for the container
                  borderRadius: BorderRadius.circular(16)),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeViewSubscription()));
                },
                child: Text(
                  "CREATE ACCOUNT",
                  style: TextStyle(
                      color: Colors.white, // Set text color to white
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ).pb(16),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Password()));
              },
              child: Text(
                "Back",
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ).pb(16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have an Account?",
                  style: TextStyle(fontSize: 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SigninView()));
                  },
                  child: Text(
                    " Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFFE4E2D)),
                  ),
                )
              ],
            )
          ],
        ).pa(16)),
      ),
    );
  }
}
