import 'package:bookz/hints.dart';
import 'package:bookz/verification.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';
import 'fields.dart';

class SetUp extends StatefulWidget {
  const SetUp({super.key});

  @override
  State<SetUp> createState() => _SetUpState();
}

class _SetUpState extends State<SetUp> {
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
            'Set Up Your Account',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35.0,
            ),
          ),
          const SizedBox(height: 25.0),
          HintText(
              title:
                  'waan Ogahay in aad ay ay dhalay tahay oo walibo soomaali tahay oo aadan maskax wax xasuusato aadan meesha ku hayn ee ha ilaawin waxaa meeshaan ku aruuuriyo fadlan.'),
          const SizedBox(height: 30.0),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF1b1b36),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Fields(
                    placeholder: 'Enter Your Full Name',
                    label: 'Enter You Full Number'),
                // const SizedBox(height: 10.0),
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          Align(
            alignment: Alignment.center,
            child: Buttons(
                title: 'Save',
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Verification(),
                      ),
                    );
                  });
                }),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
