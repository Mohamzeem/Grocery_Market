import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';
import 'package:grocery_market/presentation_layer/modules/all_products/widgets/search_bar.dart';
import '../../../helper/app_lists.dart';
import '../../custom_widgets/product_item.dart';

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({super.key});

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  final TextEditingController textController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  void dispose() {
    textController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: _appBar(context),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              AllProductsSearchBar(
                  focusNode: focusNode, textController: textController),
              const CustomSizedBox(height: 0.02, width: 1),
              Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    childAspectRatio: 1.9 / 2,
                  ),
                  itemCount: AppLists.productsList.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      image: AppLists.productsList[index]['productImage'],
                      name: AppLists.productsList[index]['productName'],
                      onSalesPage: true,
                      showSalePrice: AppLists.productsList[index]['onSale'],
                      price: AppLists.productsList[index]['productPrice'],
                      priceOnSale: AppLists.productsList[index]
                          ['productSalePrice'],
                      onTap: null,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(context) {
    return AppBar(
      title: Text(
        'All Products',
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }
}
