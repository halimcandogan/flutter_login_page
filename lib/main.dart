import 'package:flutter/material.dart';
import 'package:flutter_login_register_ui/pages/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login_register',
      theme: ThemeData(),
      home: const LoginPage(),
    );
  }
}
