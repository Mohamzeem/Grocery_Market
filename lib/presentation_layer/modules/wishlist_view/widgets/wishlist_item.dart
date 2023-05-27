import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_widgets/custom_sized_box.dart';

class WishListItem extends StatelessWidget {
  final String name;
  final String image;
  final Function()? onTap;
  // final bool showSalePrice;
  final bool? onHomePage;
  final double price;
  final double priceOnSale;
  const WishListItem({
    Key? key,
    required this.name,
    required this.image,
    required this.onTap,
    // required this.showSalePrice,
    required this.price,
    required this.priceOnSale,
    this.onHomePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.r),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      width: 70.w,
                      height: 100.h,
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.r),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              child: const Icon(IconlyLight.bag2),
                              onTap: () {},
                            ),
                            const CustomSizedBox(height: 0, width: 0.01),
                            InkWell(
                              child: const Icon(IconlyLight.heart),
                              onTap: () {},
                            ),
                          ],
                        ),
                        Text('${(price).toStringAsFixed(2)} \$',
                            style: Theme.of(context).textTheme.displaySmall),
                      ],
                    ),
                  ),
                ],
              ),
              Text(name, style: Theme.of(context).textTheme.displayLarge),
            ],
          ),
        ),
      ),
    );
  }
}
