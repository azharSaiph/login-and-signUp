import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String? title;
  final Function()? onPressed;
  const Buttons({
    Key? key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        fixedSize: Size(300, 50),
      ),
      onPressed: onPressed,
      child: Text(
        title ?? '',
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
    );
  }
}
