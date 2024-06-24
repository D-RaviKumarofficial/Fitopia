import 'package:flutter_application_1/Screens/Auth_Screens.dart/Password_view.dart';
import 'package:flutter_application_1/Screens/Auth_Screens.dart/SignIn_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
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
            Image.asset('assets/pass.png').pb(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "What's your Email?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ).pb(16),
              ],
            ),
            TextField(
              // controller: emailController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(16),
                hintText: 'Enter your Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 104, 89, 89))),
              ),
            ).pb(16),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool) {},
                  checkColor: Colors.grey[200],
                  activeColor: Colors.black,
                ),
                Text(
                  "Send me emails with update s from",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  " Fitopia's team",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFFFE4E2D)),
                )
              ],
            ).pb(16),
            Container(
              width: 500,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(
                      0xFFFE4E2D), // Set background color for the container
                  borderRadius: BorderRadius.circular(16)),
              child: RawMaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Password()));
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
