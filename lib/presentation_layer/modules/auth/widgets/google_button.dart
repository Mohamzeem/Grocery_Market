import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_colors.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  bottomLeft: Radius.circular(10.r),
                ),
              ),
              child: Image.asset(
                'assets/images/google.png',
              ),
            ),
            const CustomSizedBox(height: 0, width: 0.09),
            Text(
              'Log in with Google account',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}
