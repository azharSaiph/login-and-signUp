import 'package:bookz/hints.dart';
import 'package:bookz/setup.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';
import 'fields.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({super.key});

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Fields(placeholder: 'Enter Your Full Name'),
                const SizedBox(height: 10.0),
                Fields(placeholder: 'Enter Your Mobile Number'),
                const SizedBox(height: 10.0),
                Fields(placeholder: 'Enter Your Pass Code'),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          Buttons(title: 'Sign Up'),
          const SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already Have An Account? ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 1.7,
                  wordSpacing: 2.1,
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SetUp(),
                        ),
                      );
                    });
                  },
                  child: Text(
                    ' Sign Up',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 14.0,
                      letterSpacing: 1.7,
                      wordSpacing: 2.1,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
