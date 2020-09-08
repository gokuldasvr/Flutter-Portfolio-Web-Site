import 'package:flutter/material.dart';

class ScreenOpenInDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Recommented Resolution is 1170 X 650\nOR\nView in FullScreen in Desktop',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
