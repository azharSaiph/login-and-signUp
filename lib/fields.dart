import 'package:flutter/material.dart';

//Input General Type

class Fields extends StatelessWidget {
  final String? placeholder;
  final String? label;
  final TextInputType? n;

  const Fields({
    Key? key,
    this.placeholder,
    this.label,
    this.n,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label ?? '',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.7,
              fontSize: 14,
              wordSpacing: 2.1,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            style: TextStyle(color: Colors.white),
            keyboardType: n,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              filled: true,
              fillColor: Colors.grey.shade800,
              hintText: placeholder,
              hintStyle: TextStyle(color: Colors.grey.shade400),
              hoverColor: Colors.green,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            ),
          ),
        ],
      ),
    );
  }
}
