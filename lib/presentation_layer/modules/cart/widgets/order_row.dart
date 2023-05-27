import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../custom_widgets/custom_elevated_button.dart';

class OrderRow extends StatelessWidget {
  const OrderRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 5.h, left: 4.w),
          child: CustomElevButton(
              onPressed: () {},
              text: 'Order Now',
              textStyle: Theme.of(context).textTheme.bodyMedium!,
              height: 0.055,
              width: 0.3),
        ),
        Padding(
          padding: EdgeInsets.only(right: 4.w),
          child: Text(
            'Total: 10 \$',
            style: Theme.of(context).textTheme.titleLarge!,
          ),
        ),
      ],
    );
  }
}
