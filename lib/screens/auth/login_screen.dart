import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_app/components/common_button.dart';
import 'package:my_app/components/common_textfield.dart';
import 'package:my_app/configs.dart';
import 'package:my_app/screens/auth/Register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  _onSwitchToRegister() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const RegisterScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    color: AppColors.blueColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildLoginForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Email",
          style: TextStyle(color: AppColors.blueColor, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: CommonTextField(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Password",
              style: TextStyle(color: AppColors.blueColor),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot",
                  style: TextStyle(color: AppColors.blueColor, fontSize: 15),
                )),
          ],
        ),
        CommonTextField(
          obscureText: true,
          maxLines: 1,
        ),
        const Padding(
            padding: EdgeInsets.only(
              top: 40.0,
              bottom: 32.0,
            ),
            child: CommonButton(
              text: "Login",
            )),
        TextButton(
            onPressed: _onSwitchToRegister,
            child: const Text(
              "New User? Register Here",
              style: TextStyle(
                color: AppColors.blueColor,
              ),
            )),
      ],
    );
  }
}
