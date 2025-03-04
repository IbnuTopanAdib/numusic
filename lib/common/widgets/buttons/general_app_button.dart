import 'package:flutter/material.dart';

class GeneralAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double? height;
  const GeneralAppButton(
      {super.key, required this.onPressed, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style:
          ElevatedButton.styleFrom(minimumSize: Size.fromHeight(height ?? 80)),
      child: Text(title),
    );
  }
}
