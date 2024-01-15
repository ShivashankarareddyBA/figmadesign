import 'package:figmadesign/auth_screen/auth_screen.dart';
import 'package:figmadesign/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                CustomTextField(
                  //data: Icons.email,
                  controller: emailController,
                  hintText: "Email",
                  labelText: "Email Address",
                  keyboardType: TextInputType.emailAddress,
                  labelPadding: EdgeInsets.zero,
                  isObscure: false,
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomTextField(
                  //data: Icons.lock,
                  controller: passwordController,
                  hintText: "password",
                  labelText: "Password",
                  keyboardType: TextInputType.text,
                  labelPadding: EdgeInsets.zero,
                  isObscure: true,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 250),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 14,
                      //decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => const AuthScreen(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const SizedBox(
              width: 330,
              height: 50,
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: "inter",
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
