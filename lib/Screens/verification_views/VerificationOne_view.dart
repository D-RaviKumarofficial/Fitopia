import 'package:flutter_application_1/Screens/verification_views/VerificationFour_view.dart';
import 'package:flutter_application_1/Screens/verification_views/VerificationThree_view.dart';
import 'package:flutter_application_1/Screens/verification_views/verificationtwo_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VerificationOne extends StatefulWidget {
  const VerificationOne({Key? key}) : super(key: key);

  @override
  State<VerificationOne> createState() => _VerificationOneState();
}

class _VerificationOneState extends State<VerificationOne> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              PageOneContent(),
              VerificationTwo(),
              VerificationThree(),
              VerificationFour(),
            ],
          ),
          Positioned(
            bottom: 80,
            left: 180,
            child: Container(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4, // Total number of pages
                effect: WormEffect(activeDotColor: Color(0xFFFE4E2D)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageOneContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            bottom: -50,
            child: SizedBox(
              child: Image.asset('assets/Group.png'),
            )),
        Center(
          child: Image.asset(
            'assets/Group1.png',
            width: 300,
          ),
        ),
        Positioned(
          left: 200,
          bottom: 130,
          child: Text(
            "Center",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: 130,
          bottom: 100,
          child: Text(
            "Train, Eat & Live better with flutter_application_1's Team",
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
                    MaterialPageRoute(builder: (context) => VerificationTwo()),
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
    );
  }
}
