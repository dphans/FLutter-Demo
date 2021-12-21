import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int congHaiSo(int a, int b) => a + b;

  void startCode() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: ElevatedButton(
                  child: const Text("Run Code"),
                  onPressed: () {
                    startCode();
                  }))),
    );
  }
}
