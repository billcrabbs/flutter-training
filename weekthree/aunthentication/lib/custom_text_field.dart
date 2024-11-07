import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool obscureText;
  final IconData ico;

  const CustomTextField(
      {super.key,
      required this.label,
      this.obscureText = false,
      required this.ico});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
        prefixIcon: Icon(ico),
      ),
    );
  }
}
