import 'package:bookz/hints.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';
import 'fields.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26263F),
      body: ListView(
        children: [
          const SizedBox(height: 40.0),
          const SizedBox(height: 40.0),
          Text(
            'Sign Up',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(height: 25.0),
          HintText(
              title:
                  'waan Ogahay in aad wasaq tahay ee ha i dhihin lee waan ilaabay lamabrkayga ama lambar sireedkayga howl cusub  dhan iga dhaaf.'),
          const SizedBox(height: 30.0),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF1b1b36),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Fields(placeholder: 'Enter Your New Pas Code'),
                const SizedBox(height: 10.0),
                Fields(placeholder: 'Confrim Your Pass Code'),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          Buttons(title: 'Save'),
        ],
      ),
    );
  }
}
