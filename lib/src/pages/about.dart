import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1b2b39),
        title: Text("About"),
      ),
      body: Center(),
    );
  }
}
