import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';

class EmptyPage extends StatelessWidget {
  final String image;
  final String text;
  final String button;
  final double? scale;
  const EmptyPage({
    Key? key,
    required this.image,
    required this.text,
    required this.button,
    this.scale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            const CustomSizedBox(height: 0.065, width: 1),
            Image.asset(
              image,
              fit: BoxFit.fill,
              scale: scale,
            ),
            const CustomSizedBox(height: 0.03, width: 1),
            Text(
              text,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ],
        ),
      ),
    );
  }
}
