import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameRow extends StatelessWidget {
  const NameRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Hello,  ',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            TextSpan(
                text: 'My Name',
                style: Theme.of(context).textTheme.displaySmall),
            TextSpan(
              text: '\n mohamzeem@gmail.com',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
