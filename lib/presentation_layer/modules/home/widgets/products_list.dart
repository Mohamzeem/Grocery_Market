// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/presentation_layer/modules/all_products/all_products_page.dart';
import '../../../../helper/app_lists.dart';
import '../../../custom_widgets/product_item.dart';

class ProductsList extends StatelessWidget {
  final bool onHomePage;
  const ProductsList({
    Key? key,
    required this.onHomePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        height: onHomePage == false
            ? MediaQuery.of(context).size.height * 0.28
            : MediaQuery.of(context).size.height * 0.28,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: AppLists.productsList.length,
          itemBuilder: (context, index) {
            return onHomePage == true
                ? SizedBox(
                    width: MediaQuery.of(context).size.height * 0.225,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ProductItem(
                          image: AppLists.productsList[index]['productImage'],
                          name: AppLists.productsList[index]['productName'],
                          onSalesPage: true,
                          showSalePrice: AppLists.productsList[index]['onSale'],
                          price: AppLists.productsList[index]['productPrice'],
                          priceOnSale: AppLists.productsList[index]
                              ['productSalePrice'],
                          onHomePage: onHomePage,
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllProductsPage(),
                              ))),
                    ),
                  )
                : ProductItem(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllProductsPage(),
                        )),
                    image: AppLists.productsList[index]['productImage'],
                    name: AppLists.productsList[index]['productName'],
                    onSalesPage: true,
                    showSalePrice: AppLists.productsList[index]['onSale'],
                    price: AppLists.productsList[index]['productPrice'],
                    priceOnSale: AppLists.productsList[index]
                        ['productSalePrice'],
                    onHomePage: onHomePage,
                  );
          },
        ),
      ),
    );
  }
}
