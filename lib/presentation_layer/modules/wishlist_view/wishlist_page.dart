import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_colors.dart';
import 'package:grocery_market/helper/app_lists.dart';
import 'package:grocery_market/helper/show_dialog.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';
import 'package:grocery_market/presentation_layer/modules/wishlist_view/widgets/wishlist_item.dart';

import '../../../business_logic/theme_bloc/theme_bloc.dart';
import '../../custom_widgets/empty_page.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEmpty = true;
    if (isEmpty == true) {
      return Scaffold(
        appBar: _appBar(context, false),
        body: const EmptyPage(
          image: 'assets/images/wishlist.png',
          text: 'Nothing in Your WishList!',
          button: 'Back',
          scale: 0.7,
        ),
      );
    } else {
      return Scaffold(
        appBar: _appBar(context, true),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5, mainAxisSpacing: 5,

              // childAspectRatio: 150 / 100,
            ),
            itemCount: AppLists.productsList.length,
            itemBuilder: (context, index) {
              return WishListItem(
                name: AppLists.productsList[index]['productName'],
                image: AppLists.productsList[index]['productImage'],
                onTap: null,
                // showSalePrice: AppLists.productsList[index]['onSale'],
                price: AppLists.productsList[index]['productPrice'],
                priceOnSale: AppLists.productsList[index]['productSalePrice'],
              );
            },
          ),
        ),
      );
    }
  }

  AppBar _appBar(context, bool isEmpty) {
    return AppBar(
      title: Text(
        'WishList (10)',
        style: Theme.of(context).textTheme.displayMedium,
      ),
      actions: [
        Visibility(
          visible: isEmpty,
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return InkWell(
                onTap: () {
                  CustomShowDialog(
                    context: context,
                    backGroundColor: state is LightThemeState ? kBlack : kWhite,
                    content: Text(
                      'Are You Sure You Want Delete All?',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    title: 'Delete All',
                    btnTxt: 'Sure',
                    icon: Icon(
                      IconlyBold.delete,
                      color: state is LightThemeState ? kSecLight : kSecDark,
                    ),
                    onPressed: () {},
                  );
                },
                child: Icon(
                  IconlyBold.delete,
                  size: 25.r,
                ),
              );
            },
          ),
        ),
        const CustomSizedBox(height: 0, width: 0.04)
      ],
    );
  }
}
