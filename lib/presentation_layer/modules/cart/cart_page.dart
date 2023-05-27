import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_lists.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/empty_page.dart';
import 'package:grocery_market/presentation_layer/modules/cart/widgets/cart_item.dart';
import 'package:grocery_market/presentation_layer/modules/product_details/product_details_page.dart';
import 'widgets/order_row.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEmpty = true;
    if (isEmpty == true) {
      return const EmptyPage(
        image: 'assets/images/cart.png',
        text: 'Nothing In Your Cart!',
        button: 'Back',
      );
    } else {
      return Scaffold(
        appBar: _appBar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              const OrderRow(),
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailsPage(
                                  image: AppLists.productsList[index]
                                      ['productImage'],
                                  name: AppLists.productsList[index]
                                      ['productName'],
                                  price: AppLists.productsList[index]
                                      ['productPrice']),
                            ));
                      },
                      child: CartItem(
                        priceOnSale: AppLists.productsList[index]
                            ['productSalePrice'],
                        onSalesPage: false,
                        showSalePrice: AppLists.productsList[index]['onSale'],
                        price: AppLists.productsList[index]['productPrice'],
                        image: AppLists.productsList[index]['productImage'],
                        name: AppLists.productsList[index]['productName'],
                      ),
                    );
                  },
                  itemCount: AppLists.productsList.length,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  AppBar _appBar(context) {
    return AppBar(
      title: Text(
        'Cart',
        style: Theme.of(context).textTheme.displayMedium,
      ),
      actions: [
        InkWell(
          onTap: () {},
          child: Icon(
            IconlyBold.delete,
            size: 25.r,
          ),
        ),
        const CustomSizedBox(height: 0, width: 0.04)
      ],
    );
  }
}
