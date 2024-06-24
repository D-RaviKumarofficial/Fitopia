import 'package:flutter_application_1/Screens/Auth_Screens.dart/OtpPage_view.dart';
import 'package:flutter_application_1/Screens/Auth_Screens.dart/SignIn_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Image.asset('assets/logo.png').pt(64).pb(8),
            Text(
              "Forgot your password?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ).pb(80),
            Image.asset(
              'assets/otp.png',
              width: 400,
              height: 200,
            ).pb(64),
            Text(
              "Enter your email address and we'll send you code to reset your password.",
              style: TextStyle(fontSize: 15, color: Colors.grey[500]),
            ).pb(16),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: 'Enter your Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 104, 89, 89))),
              ),
            ).pb(16),
            Container(
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xFFFE4E2D),
                  borderRadius: BorderRadius.circular(16)),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OtpPage()));
                },
                child: Text(
                  "SEND CODE",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ).pb(24),
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
