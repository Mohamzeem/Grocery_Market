// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import '../../../custom_widgets/custom_sized_box.dart';

Future<void> ThemeShowDialog({
  required BuildContext context,
  required Color backGroundColor,
  required Widget content,
  required String title,
  required Widget icon,
}) async {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: backGroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const CustomSizedBox(height: 0, width: 0.02),
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
      content: content,
    ),
  );
}
