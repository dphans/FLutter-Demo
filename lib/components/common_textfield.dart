import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  bool obscureText;
  int maxLines;

  CommonTextField({Key? key, this.obscureText = false, this.maxLines = 1})
      : super(key: key);

  @override
  _CommonTextFieldState createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          obscureText: widget.obscureText,
          maxLines: widget.maxLines,
        ),
      ),
    );
  }
}
