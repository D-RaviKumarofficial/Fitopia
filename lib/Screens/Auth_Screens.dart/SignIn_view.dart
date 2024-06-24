import 'package:flutter_application_1/Screens/Auth_Screens.dart/EmailPage_View.dart';
import 'package:flutter_application_1/Screens/Auth_Screens.dart/ForgotPassword.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
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
            ).pb(24),
            Image.asset('assets/Signup.png').pb(24),
            Text(
              "Please login with your Email & Password and \n improve your body with us",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ).pb(16),
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
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xFFFE4E2D)),
                    ).pb(16)),
              ],
            ),
            TextField(
              // controller: passwordController,
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.remove_red_eye),
                contentPadding: EdgeInsets.all(16),
                hintText: 'Enter your Password',
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
                  color: Color(
                      0xFFFE4E2D), // Set background color for the container
                  borderRadius: BorderRadius.circular(16)),
              child: RawMaterialButton(
                onPressed: () {},
                child: Text(
                  "LOGIN",
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
                        MaterialPageRoute(builder: (context) => EmailPage()));
                  },
                  child: Text(
                    " Sign Up",
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
