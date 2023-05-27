import 'package:flutter/material.dart';

class CustomElevButton extends StatelessWidget {
  const CustomElevButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.textStyle,
    this.backGroundColor,
    required this.height,
    required this.width,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final TextStyle textStyle;
  final Color? backGroundColor;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: backGroundColor,
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
