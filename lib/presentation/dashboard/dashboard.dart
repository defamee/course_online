import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({required this.title, required this.buttonText});
  final String title;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((title.isEmpty) ? "Halaman Dashboard" : title),
      ),
      body: ElevatedButton(
        child: Text(buttonText),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
