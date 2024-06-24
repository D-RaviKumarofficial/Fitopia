import 'package:flutter_application_1/Screens/Subscription_views/Payment_view.dart';
import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class HomeViewSubscription extends StatefulWidget {
  const HomeViewSubscription({super.key});

  @override
  State<HomeViewSubscription> createState() => _HomeViewSubscriptionState();
}

class _HomeViewSubscriptionState extends State<HomeViewSubscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/subscription.png',
          ).pt(64).pb(32),
          Text(
            "Your first 7 days are free.",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ).pb(16),
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "USD \$10/month",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "USD \$250 66% off",
                      style: TextStyle(color: Colors.grey[500], fontSize: 18),
                    )
                  ],
                ),
                Text("12 months USD \$45",
                    style: TextStyle(color: Colors.grey[500]))
              ],
            ),
          ).pb(16),
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "USD \$8/month",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "USD \$122 66% off",
                      style: TextStyle(color: Colors.grey[500], fontSize: 18),
                    )
                  ],
                ),
                Text("12 months USD \$23",
                    style: TextStyle(color: Colors.grey[500]))
              ],
            ),
          ).pb(16),
          Container(
            padding: EdgeInsets.all(18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[700]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "USD \$10/month",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      "USD \$250 66% off",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
                Text("12 months USD \$45",
                    style: TextStyle(color: Colors.white))
              ],
            ),
          ).pb(100),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFFFE4E2D),
                borderRadius: BorderRadius.circular(16)),
            child: RawMaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentView()));
              },
              child: Text(
                "NEXT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ).pa(20)),
    );
  }
}
