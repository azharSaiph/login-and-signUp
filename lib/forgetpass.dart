import 'package:flutter/material.dart';

import 'buttons.dart';
import 'hints.dart';
import 'new_otp.dart';
import 'signup.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
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
            'Forget Pass Code',
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
              OTPPin(
                titile: '8',
              ),
              OTPPin(
                titile: '0',
              ),
              OTPPin(
                titile: '4',
              ),
              OTPPin(
                titile: '2',
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          Align(
            alignment: Alignment.center,
            child: Buttons(
              title: 'Do ne',
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
        ],
      ),
    );
  }
}
