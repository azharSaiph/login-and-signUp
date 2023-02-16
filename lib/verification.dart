import 'package:flutter/material.dart';

import 'buttons.dart';

import 'hints.dart';
import 'new_otp.dart';
import 'signup.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF26263F),
        title: Text(''),
      ),
      backgroundColor: Color(0xFF26263F),
      body: ListView(
        children: [
          const SizedBox(height: 40.0),
          const SizedBox(height: 40.0),
          Text(
            'Verifications',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(height: 25.0),
          HintText(
              title:
                  'waan Ogahay in aad ay ay dhalay tahay oo walibo soomaali tahay ee soo gali lamber sireed ka laguugu diray telkaan 84237291'),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OTPPin(titile: '1'),
              OTPPin(titile: '5'),
              OTPPin(titile: '9'),
              OTPPin(titile: '3'),
            ],
          ),
          const SizedBox(height: 40.0),
          Align(
            alignment: Alignment.center,
            child: Buttons(
              title: 'Resend OTP',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignUp(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 40.0),
          Text(
            'Please Wait 30s ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              letterSpacing: 1.7,
              wordSpacing: 2.1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
