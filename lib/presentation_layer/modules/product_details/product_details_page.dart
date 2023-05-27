import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_colors.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';
import '../../custom_widgets/custom_elevated_button.dart';

class ProductDetailsPage extends StatefulWidget {
  final String image;
  final String name;
  final double price;

  const ProductDetailsPage({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  double currentNumber = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: Theme.of(context).textTheme.titleLarge!,
        ),
        actions: [
          Icon(
            IconlyLight.heart,
            size: 30.r,
          ),
          const CustomSizedBox(height: 0, width: 0.03),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            widget.image,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          const CustomSizedBox(height: 0.03, width: 1),
          Container(
            decoration: BoxDecoration(
              color: kGrey.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.r),
                topRight: Radius.circular(40.r),
              ),
            ),
            child: Column(
              children: [
                const CustomSizedBox(height: 0.03, width: 1),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total: 10 \$',
                        style: Theme.of(context).textTheme.titleLarge!,
                      ),
                      CustomElevButton(
                          onPressed: () {},
                          text: 'Free Delivery',
                          textStyle: Theme.of(context).textTheme.bodyMedium!,
                          height: 0.05,
                          width: 0.4),
                    ],
                  ),
                ),
                const CustomSizedBox(height: 0.02, width: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.add_circle_rounded,
                        size: 40.r,
                      ),
                      onTap: () {
                        _increment();
                      },
                    ),
                    const CustomSizedBox(height: 0, width: 0.01),
                    Text(
                      (currentNumber).toString(),
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const CustomSizedBox(height: 0, width: 0.015),
                    Text(
                      'KG',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const CustomSizedBox(height: 0, width: 0.01),
                    InkWell(
                      child: Icon(
                        Icons.remove_circle_rounded,
                        size: 40.r,
                      ),
                      onTap: () {
                        _decrement();
                      },
                    ),
                  ],
                ),
                const CustomSizedBox(height: 0.2, width: 1),
                Container(
                  decoration: BoxDecoration(
                    color: kGrey.withOpacity(0.1),
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(40.r),
                    //   topRight: Radius.circular(40.r),
                    // ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Total Price',
                              style: Theme.of(context).textTheme.labelLarge!,
                            ),
                            Text(
                              '10 \$',
                              style: Theme.of(context).textTheme.labelLarge!,
                            ),
                          ],
                        ),
                        CustomElevButton(
                            onPressed: () {},
                            text: 'Add to Cart',
                            textStyle: Theme.of(context).textTheme.bodyMedium!,
                            height: 0.07,
                            width: 0.32),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _increment() {
    setState(() {
      currentNumber >= 99 ? currentNumber = 99 : currentNumber += 0.5;
    });
  }

  void _decrement() {
    setState(() {
      currentNumber = max(currentNumber - 0.5, 0.5);
    });
  }
}
