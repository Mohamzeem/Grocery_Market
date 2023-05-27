
import 'package:flutter/material.dart';

class ShowSnackBar {
  void showSuccessSnackBar({
    required BuildContext context,
    required String message,
    required TextStyle textStyle,
    required Color color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text(message, style: textStyle
              // const TextStyle(
              //     color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
              ),
        ),
        backgroundColor: color,
      ),
    );
  }

  void showErrorSnackBar({
    required BuildContext context,
    required String message,
    required TextStyle textStyle,
    required Color color,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: Text(
            message,
            style: textStyle,
            // const TextStyle(
            //     color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
          ),
        ),
        backgroundColor: color,
      ),
    );
  }
}
