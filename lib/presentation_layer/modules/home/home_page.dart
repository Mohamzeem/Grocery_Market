import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/presentation_layer/modules/all_products/all_products_page.dart';
import 'package:grocery_market/presentation_layer/modules/home/widgets/products_list.dart';
import 'package:grocery_market/presentation_layer/modules/home/widgets/sales_list.dart';
import 'package:grocery_market/presentation_layer/modules/sale_view/sales_page.dart';
import '../../custom_widgets/custom_sized_box.dart';
import 'widgets/offers_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OffersList(),
        Center(
          child: TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SalesPage(),
                )),
            child: Text(
              'View All',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
        ),
        Row(
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: Row(
                children: [
                  Text(
                    'ON SALE',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const CustomSizedBox(height: 0, width: 0.015),
                  const Icon(IconlyLight.discount)
                ],
              ),
            ),
            const Flexible(
              child: SalesList(),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Our Products',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllProductsPage(),
                    )),
                child: Text(
                  'Browse All',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ],
          ),
        ),
        const ProductsList(
          onHomePage: true,
        ),
      ],
    );
  }
}
