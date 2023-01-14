// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

import '../components/buttons.dart';
import '../components/textlogin.dart';
import '../components/textfields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final ColorUtility color = ColorUtility();
final TextUtility text = TextUtility();
final PaddingUtility padding = PaddingUtility();
final ImagePath imagePath = ImagePath();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool checkBoxValue = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: color.backgroundColor,
      appBar: AppBar(backgroundColor: color.transparent, elevation: 0),
      body: Padding(
        padding: padding.scaffold,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/${imagePath.loginPage}",
                width: MediaQuery.of(context).size.width * 0.65,
              ),
              // ignore: prefer_const_constructors
              LoginText(
                text: text.welcome,
                size: 30,
                weight: FontWeight.bold,
                color: color.textBlack,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: padding.bottom,
                      child: LoginTextField(
                          obscureText: false,
                          text: text.mailTextfield,
                          icon: Icons.mail)),
                  LoginTextField(
                      obscureText: true,
                      text: text.passwordTextfield,
                      icon: Icons.password_outlined),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                value: checkBoxValue, onChanged: (value) {}),
                            LoginText(
                              size: 15,
                              weight: FontWeight.normal,
                              text: text.rememberMe,
                              color: color.textBlack,
                            )
                          ],
                        ),
                        LoginText(
                          size: 15,
                          weight: FontWeight.normal,
                          text: text.forgotPassword,
                          color: color.textBlue,
                        ),
                      ]),
                  LoginButton(color: color.buttonBlue),
                  Padding(
                    padding: padding.top,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoginText(
                          size: 15,
                          weight: FontWeight.normal,
                          text: text.account,
                          color: color.textBlack,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        LoginText(
                          size: 15,
                          weight: FontWeight.normal,
                          text: text.accountOpen,
                          color: color.textBlue,
                        )
                      ],
                    ),
                  ),
                ],
              ),

              LoginText(
                size: 20,
                weight: FontWeight.bold,
                text: text.or,
                color: color.textBlack,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    color: color.buttonBlue,
                    imagePath: imagePath.facebook,
                  ),
                  Button(
                    color: color.buttonBlueGrey,
                    imagePath: imagePath.google,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorUtility {
  final Color backgroundColor = const Color.fromARGB(240, 234, 253, 252);
  final Color transparent = Colors.transparent;
  final Color textBlack = Colors.black;
  final Color textBlue = Colors.blue;
  final Color buttonBlueGrey = Colors.blueGrey;
  final Color buttonBlue = const Color.fromRGBO(17, 120, 242, 1);
}

class TextUtility {
  final String welcome = "Welcome Back !";
  final String mailTextfield = "Email Address";
  final String passwordTextfield = "Password";
  final String rememberMe = "Remember Me";
  final String forgotPassword = "Forgot Password";
  final String account = "Don't have a account ?";
  final String accountOpen = "Create a now !";
  final String or = "OR";
}

class PaddingUtility {
  final EdgeInsets scaffold =
      EdgeInsets.symmetric(horizontal: 20, vertical: 20);
  final EdgeInsets top = EdgeInsets.only(top: 8.0);
  final EdgeInsets bottom = EdgeInsets.only(bottom: 8.0);
}

class ImagePath {
  final String facebook = "facebook_logo.png";
  final String google = "google_logo.png";
  final String loginPage = "login_image.png";
}
