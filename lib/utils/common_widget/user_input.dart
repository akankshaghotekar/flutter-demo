import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator; // Add validator

  const UserInput({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator, // Add validator
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator, // Use validator
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}
