import 'package:flutter/material.dart';

class OTPPin extends StatelessWidget {
  final String? titile;
  const OTPPin({
    Key? key,
    this.titile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titile ?? '',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
