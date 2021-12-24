import 'package:flutter/material.dart';

import '../configs.dart';

class CommonButton extends StatefulWidget {
  final String text;
  final Function? onPressed;

  const CommonButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  _CommonButtonState createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      color: AppColors.blueColor,
      textColor: Colors.white,
      elevation: 0,
      onPressed: () {
        widget.onPressed?.call();
      },
      child: Text(widget.text),
    );
  }
}
