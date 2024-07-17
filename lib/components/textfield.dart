import 'package:flutter/material.dart';

class Textfieldd extends StatelessWidget {
  final String? hintText;
  final bool? obscureText;
  final controller;

  const Textfieldd({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: controller!,
        obscureText: obscureText!,
        decoration: InputDecoration(
            hintText: hintText!,
            hintStyle: TextStyle(color: Colors.grey.shade500),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500)),
            fillColor: Colors.grey.shade200,
            filled: true),
      ),
    );
  }
}
