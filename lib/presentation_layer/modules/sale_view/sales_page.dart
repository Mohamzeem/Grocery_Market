import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/product_item.dart';
import '../../../helper/app_lists.dart';
import '../../custom_widgets/custom_sized_box.dart';

class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool noSale = true;
    if (noSale == false) {
      return Scaffold(
        appBar: _appBar(context),
        body: Center(
          child: Column(
            children: [
              const CustomSizedBox(height: 0.2, width: 1),
              Image.asset(
                'assets/images/sale.png',
                scale: 3,
              ),
              Text(
                'NO SALE AT MOMENT, STAY TUNED!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: _appBar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Center(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 8,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 240 / 250),
              itemCount: AppLists.salesList.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  name: AppLists.salesList[index]['salesName'],
                  image: AppLists.salesList[index]['salesImage'],
                  onSalesPage: true,
                  showSalePrice: true,
                  price: AppLists.productsList[index]['productPrice'],
                  priceOnSale: AppLists.productsList[index]['productSalePrice'],
                  onTap: null,
                );
              },
            ),
          ),
        ),
      );
    }
  }

  AppBar _appBar(context) {
    return AppBar(
      title: Text(
        'Products On Sale',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
