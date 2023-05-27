import 'package:flutter/material.dart';
import 'package:grocery_market/helper/app_lists.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/product_item.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';

import '../../sale_view/sales_page.dart';

class SalesList extends StatelessWidget {
  const SalesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ProductItem(
            image: AppLists.salesList[index]['salesImage'],
            name: AppLists.salesList[index]['salesName'],
            onSalesPage: false,
            showSalePrice: true,
            price: AppLists.productsList[index]['productPrice'],
            priceOnSale: AppLists.productsList[index]['productSalePrice'],
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SalesPage(),
                )),
          );
        },
        separatorBuilder: (context, index) =>
            const CustomSizedBox(height: 0, width: 0.02),
        itemCount: AppLists.salesList.length,
      ),
    );
  }
}
