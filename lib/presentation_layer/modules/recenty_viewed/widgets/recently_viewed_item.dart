import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentlyViewedItem extends StatelessWidget {
  final double price;
  final String name;
  final String image;

  const RecentlyViewedItem({
    Key? key,
    required this.price,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width * 0.25,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  '${price.toStringAsFixed(2)} \$',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
            const Icon(IconlyBold.bag2)
          ],
        ),
      ),
    );
  }
}
