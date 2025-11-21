import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final TextStyle textStyle;
  final ButtonStyle buttonStyle;

  const CustomButton({    super.key,
    required this.text,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.textStyle,
    required this.buttonStyle,

  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,

      child:  ElevatedButton(
        style: buttonStyle,
        onPressed: onPressed, child: Text(text,
        style: textStyle,
      ),
      ),
    );
  }
}
