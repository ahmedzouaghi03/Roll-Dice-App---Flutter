import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Robology App',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
