// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_sized_box.dart';

class ProductItem extends StatefulWidget {
  final String name;
  final String image;
  final bool onSalesPage;
  final Function()? onTap;
  final bool showSalePrice;
  final bool? onHomePage;
  final double price;
  final double priceOnSale;
  const ProductItem({
    Key? key,
    required this.name,
    required this.image,
    required this.onSalesPage,
    required this.onTap,
    required this.showSalePrice,
    required this.price,
    required this.priceOnSale,
    this.onHomePage,
  }) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  double currentNumber = 1.0;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.onTap,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      width: widget.onSalesPage == false ? 100.w : 180.w,
                      height: widget.onSalesPage == false ? 100.h : 100.h,
                      child: Image.asset(
                        widget.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  widget.onSalesPage == false
                      ? Column(
                          children: [
                            Text(
                              '1 KG',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
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
                          ],
                        )
                      : Column(
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  child: const Icon(
                                    IconlyLight.bag2,
                                    size: 30,
                                  ),
                                  onTap: () {},
                                ),
                                const CustomSizedBox(height: 0, width: 0.01),
                                InkWell(
                                  child: const Icon(
                                    IconlyLight.heart,
                                    size: 30,
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                  const CustomSizedBox(height: 0, width: 0.02)
                ],
              ),
              Visibility(
                visible: widget.onSalesPage,
                child: Row(
                  children: [
                    InkWell(
                      child: const Icon(
                        Icons.add_circle_outlined,
                        size: 30,
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
                      child: const Icon(
                        Icons.remove_circle_rounded,
                        size: 30,
                      ),
                      onTap: () {
                        _decrement();
                      },
                    ),
                  ],
                ),
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
              Text(
                widget.name,
                style: widget.onSalesPage == false
                    ? Theme.of(context).textTheme.displayLarge
                    : Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
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
