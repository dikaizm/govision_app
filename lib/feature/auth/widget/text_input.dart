import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;

  const TextInput(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Background color for input container
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade400, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
          style: TextStyle(
            color: Colors.black87, // Text color
            fontSize: 16, // Font size
          ),
          decoration: InputDecoration(
            border: InputBorder.none, // Removes default border
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 14,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
          ),
          cursorColor: Colors.blueAccent, // Custom cursor color
        ),
      ),
    );
  }
}
