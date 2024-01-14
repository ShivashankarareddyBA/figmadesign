import 'package:figmadesign/auth_screen/auth_screen.dart';
import 'package:figmadesign/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController isScrolable = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          color: Colors.white,
        ),
        Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                data: Icons.email,
                controller: emailcontroller,
                hintText: "email",
                isObscure: false,
              ),
              CustomTextField(
                data: Icons.lock,
                controller: passwordcontroller,
                hintText: "password",
                isObscure: true,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (c) =>
                      const AuthScreen()), // need to change Login screen to home screen
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
          ),
          child: const Text(
            "Login",
            style: TextStyle(
              fontFamily: "inter",
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ));
  }
}
