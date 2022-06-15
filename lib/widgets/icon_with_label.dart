import 'package:flutter/material.dart';

class IconeWithLabel extends StatelessWidget {
  const IconeWithLabel({
    required this.iconok,
    required this.text,
    required this.warna,
    required this.warnatext,
  });

  final IconData iconok;
  final String text;
  final Color warna, warnatext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconok,
          size: 40,
          color: warna,
        ),
        SizedBox(height: 10),
        Text(text, style: TextStyle(color: warnatext)),
      ],
    );
  }
}
