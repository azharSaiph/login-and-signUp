import 'package:flutter/material.dart';

class HintText extends StatelessWidget {
  final String title;
  const HintText({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
        letterSpacing: 1.5,
        wordSpacing: 2.0,
      ),
    );
  }
}
