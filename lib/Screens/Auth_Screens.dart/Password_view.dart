import 'package:flutter_application_1/Screens/Auth_Screens.dart/EmailPage_View.dart';
import 'package:flutter_application_1/Screens/Auth_Screens.dart/NamePage_view.dart';
import 'package:flutter_application_1/Screens/Auth_Screens.dart/SignIn_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                  " Fitopia",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue[900]),
                )
              ],
            ).pb(80),
            Image.asset('assets/pass2.png').pb(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Choose a password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ).pb(16),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: 'Enter password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 104, 89, 89))),
              ),
            ).pb(8),
            Row(
              children: [
                Text(
                  "8-30 charcters,1 upper & lower & 1 number",
                  style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                ).pb(16),
              ],
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(
                      0xFFFE4E2D), // Set background color for the container
                  borderRadius: BorderRadius.circular(16)),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NamePage()));
                },
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                      color: Colors.white, // Set text color to white
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ).pb(24),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EmailPage()));
              },
              child: Text(
                "Back",
                style: TextStyle(fontSize: 20, color: Colors.grey[600]),
              ).pb(24),
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
