import 'package:flutter/material.dart';
import 'package:my_app/configs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinkColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/ic_app_logo.png"),
                    const Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Text(
                        "Simple Task Manager",
                        style: TextStyle(color: AppColors.blueColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "© 2017 Candy",
                  style: TextStyle(
                    color: AppColors.blueColor.withAlpha((255.0 / 2.0).round()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
