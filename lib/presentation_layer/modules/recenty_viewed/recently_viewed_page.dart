import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_lists.dart';
import 'package:grocery_market/helper/show_dialog.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/custom_sized_box.dart';
import 'package:grocery_market/presentation_layer/custom_widgets/empty_page.dart';
import 'package:grocery_market/presentation_layer/modules/product_details/product_details_page.dart';
import 'package:grocery_market/presentation_layer/modules/recenty_viewed/widgets/recently_viewed_item.dart';
import '../../../business_logic/theme_bloc/theme_bloc.dart';
import '../../../helper/app_colors.dart';

class ViewedPage extends StatelessWidget {
  const ViewedPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEmpty = true;
    if (isEmpty == true) {
      return Scaffold(
        appBar: _appBar(context, false),
        body: const EmptyPage(
          image: 'assets/images/history.png',
          text: 'Nothing Viewed!',
          button: 'Back',
        ),
      );
    } else {
      return Scaffold(
        appBar: _appBar(context, true),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
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
                      child: RecentlyViewedItem(
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

  AppBar _appBar(context, bool isEmpty) {
    return AppBar(
      title: Text(
        'Recenty Viewed',
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
                      'Are You Sure You Want Clear History?',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    title: 'Clear History',
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
