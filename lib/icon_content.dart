import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98));

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;

  const IconContent({Key? key, this.icon, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          label!,
          style: labelTextStyle,
        ),
      ],
    );
  }
}