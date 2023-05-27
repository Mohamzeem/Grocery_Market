// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../presentation_layer/custom_widgets/custom_elevated_button.dart';
import '../presentation_layer/custom_widgets/custom_sized_box.dart';
import 'app_colors.dart';

Future<void> CustomShowDialog({
  required BuildContext context,
  required Color backGroundColor,
  required Widget content,
  required String title,
  required String btnTxt,
  required Widget icon,
  required Function() onPressed,
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
      actions: [
        Padding(
          padding: EdgeInsets.only(bottom: 15.h, right: 17.w),
          child: CustomElevButton(
              onPressed: () {},
              text: btnTxt,
              textStyle: Theme.of(context).textTheme.titleLarge!,
              backGroundColor: kSecLight,
              height: 0.045,
              width: 0.25),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15.h, right: 17.w),
          child: CustomElevButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Cancel',
              textStyle: Theme.of(context).textTheme.titleLarge!,
              backGroundColor: kSecDark,
              height: 0.045,
              width: 0.25),
        ),
      ],
    ),
  );
}
