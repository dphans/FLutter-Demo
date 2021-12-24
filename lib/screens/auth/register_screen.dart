import 'package:flutter/material.dart';
import 'package:my_app/components/common_button.dart';
import 'package:my_app/components/common_textfield.dart';
import 'package:my_app/configs.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: AppColors.blueColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("Email"),
                  const SizedBox(height: 8),
                  CommonTextField(),
                  const SizedBox(height: 16),
                  const Text("Password"),
                  const SizedBox(height: 8),
                  CommonTextField(),
                  const SizedBox(height: 16),
                  const Text("Confirm Password"),
                  const SizedBox(height: 8),
                  CommonTextField(),
                  const SizedBox(height: 40),
                  const CommonButton(text: "Register"),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 68.0, right: 68.0, bottom: 20.0),
                    child: Text(
                      "By registering, you automatically accept the Terms & Policies of candy app.",
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Have account? Login",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blueColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
