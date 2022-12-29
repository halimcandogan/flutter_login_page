// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText({
    Key? key,
    required this.size,
    required this.text,
    required this.weight,
    required this.color,
  }) : super(key: key);
  final double size;
  final String text;
  final FontWeight weight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: weight, fontSize: size, color: color),
    );
  }
}
