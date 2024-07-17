import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});
hh
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onHover: (value) {},
      onPressed: () {
        Navigator.pushNamed(context, 'home');
      },
      child: Container(
        padding:
            const EdgeInsets.only(bottom: 20, top: 20, right: 150, left: 150),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
