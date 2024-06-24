import 'package:flutter_application_1/core/extensions.dart';
import 'package:flutter/material.dart';

class PaymentView extends StatefulWidget {
  const PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "You have selected",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ).pb(16),
              ),
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
              ).pb(16),
              InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    "Change package",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFE4E2D),
                        fontSize: 17),
                  ),
                ),
              ).pb(64),
              Column(
                children: [
                  Text(
                    "Payment Methods",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
              Image.asset('assets/pay.png').pb(16),
              Text("Card Name*",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
                  .pb(8),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18),
                  hintText: 'Enter Card Name',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ).pb(16),
              Text("Card Number*",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
                  .pb(8),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(18),
                  hintText: 'Enter Card Number',
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ).pb(16),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Card Number*",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17))
                            .pb(8),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(18),
                            hintText: 'Enter Card Number',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                          ),
                        ).pb(16),
                      ],
                    )
                  ],
                ),
              )
            ],
          ).pa(20),
        ),
      ),
    );
  }
}
