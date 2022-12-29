// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: file_names
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Login",
            // ignore: unnecessary_const
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.color,
    required this.imagePath,
  }) : super(key: key);
  final Color color;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.44,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: (() {}),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            "images/$imagePath",
            width: 35,
          ),
        ),
      ),
    );
  }
}
