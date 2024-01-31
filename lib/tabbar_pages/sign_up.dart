import 'package:figmadesign/auth_screen/auth_screen.dart';
import 'package:figmadesign/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // bool _obscureText = true;

  Future<void> formvalidation() async {
    if (passwordController == null) if (passwordController.text.isNotEmpty &&
        emailController.text.isNotEmpty) {
      // save th data
    } else
    //will display error meassage "please fill al the filed"
    {
      //password donot match
    }
  }

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
                  data: Icons.person,
                  hintText: "Name",
                  labelText: "Name",
                  keyboardType: TextInputType.text,
                  labelPadding: EdgeInsets.zero,
                  isObscure: false,
                ),
                CustomTextField(
                  data: Icons.phone,
                  controller: emailController,
                  hintText: "Phone numer",
                  labelText: "Mobile",
                  keyboardType: TextInputType.text,
                  labelPadding: EdgeInsets.zero,
                  isObscure: false,
                ),
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
                  controller: passwordController,
                  hintText: "password",
                  labelText: "Password",
                  keyboardType: TextInputType.text,
                  labelPadding: EdgeInsets.zero,
                  isObscure: true,
                ),
                CustomTextField(
                  controller: passwordController,
                  hintText: "Confirm password",
                  labelText: " Confirm Password",
                  keyboardType: TextInputType.text,
                  labelPadding: EdgeInsets.zero,
                  isObscure: true,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
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
                    "Sign Up",
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
          ),
        ],
      ),
    );
  }
}
