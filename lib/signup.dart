import 'package:bookz/forgetpass.dart';
import 'package:bookz/hints.dart';
import 'package:bookz/home.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';
import 'fields.dart';
import 'setup.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF26263F),
      body: Center(
        child: ListView(children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 60.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 18.0),
                      Text(
                        'Sign Up',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                        ),
                      ),
                      const SizedBox(height: 12.0),
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
                            Fields(
                                placeholder: 'Enter Your Phone Number',
                                label: 'Enter Your Phone Number',
                                n: TextInputType.number),
                            Fields(
                                placeholder: 'Enter Your Phone Number',
                                label: 'Enter Your Phone Number'),
                            const SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                child: Checkbox(
                                    value: checked,
                                    onChanged: (val) {
                                      setState(() {
                                        checked = val;
                                      });
                                    }),
                              ),
                              Text(
                                'Save Pass Code',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  letterSpacing: 1.6,
                                  wordSpacing: 2.3,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Forget(),
                                  ),
                                );
                              });
                            },
                            child: Text(
                              'Forget Pass Code',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14.0,
                                letterSpacing: 1.7,
                                wordSpacing: 2.1,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18.0),
                      Align(
                        alignment: Alignment.center,
                        child: Buttons(
                          title: 'Sign In',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 18.0),
                      Center(
                        child: TextButton(
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
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
