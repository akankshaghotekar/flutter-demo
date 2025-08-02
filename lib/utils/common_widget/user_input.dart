import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  const UserInput({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}
