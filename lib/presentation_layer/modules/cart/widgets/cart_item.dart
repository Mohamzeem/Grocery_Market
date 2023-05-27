import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../custom_widgets/custom_sized_box.dart';

class CartItem extends StatefulWidget {
  final double priceOnSale;
  final bool onSalesPage;
  final bool showSalePrice;
  final double price;
  final String name;
  final String image;

  const CartItem({
    Key? key,
    required this.priceOnSale,
    required this.onSalesPage,
    required this.showSalePrice,
    required this.price,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  double currentNumber = 1.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset(
                widget.image,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Text(
                  widget.name,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Row(
                  children: [
                    Text(
                      '${(widget.priceOnSale * currentNumber).toStringAsFixed(2)} \$',
                      style: widget.onSalesPage == false
                          ? Theme.of(context).textTheme.displaySmall
                          : Theme.of(context).textTheme.labelLarge,
                    ),
                    Visibility(
                        visible: widget.showSalePrice,
                        child: const CustomSizedBox(height: 0, width: 0.06)),
                    Visibility(
                      visible: widget.showSalePrice,
                      child: Text(
                        '${(widget.price * currentNumber).toStringAsFixed(2)} \$',
                        style: widget.onSalesPage == false
                            ? Theme.of(context).textTheme.titleMedium
                            : Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      child: Icon(
                        Icons.add_circle_outlined,
                        size: 30.r,
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
                        size: 30.r,
                      ),
                      onTap: () {
                        _decrement();
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  child: Icon(
                    CupertinoIcons.cart_badge_minus,
                    size: 30.r,
                  ),
                  onTap: () {},
                ),
                const CustomSizedBox(height: 0.02, width: 0),
                InkWell(
                  child: Icon(
                    IconlyLight.bag2,
                    size: 30.r,
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
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
