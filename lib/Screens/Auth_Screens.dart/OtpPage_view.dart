import 'package:flutter_application_1/Screens/Auth_Screens.dart/SignIn_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
              Text(
                "Enter the 6 digit code send to your email.",
                style: TextStyle(fontSize: 15, color: Colors.grey[500]),
              ).pb(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(6, (index) {
                  return SizedBox(
                    width: 50,
                    child: TextFormField(
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  );
                }),
              ).pb(24),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "Resend Code?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFFE4E2D)),
                  ).pb(32)),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFFFE4E2D),
                    borderRadius: BorderRadius.circular(16)),
                child: RawMaterialButton(
                  onPressed: () {},
                  child: Text(
                    "NEXT",
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninView()));
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
          ).pa(20),
        ),
      ),
    );
  }
}
