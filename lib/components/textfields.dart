// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    required this.obscureText,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final bool obscureText;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color.fromARGB(240, 234, 253, 252),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 4, spreadRadius: 0.5)
          ]),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintStyle: const TextStyle(fontSize: 17),
          hintText: text,
          suffixIcon: Icon(icon),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}
