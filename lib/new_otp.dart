import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPPin extends StatelessWidget {
  final String? titile;
  const OTPPin({
    Key? key,
    this.titile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      autofocus: true,
      pinAnimationType: PinAnimationType.rotation,
      defaultPinTheme: PinTheme(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        textStyle: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }
}
