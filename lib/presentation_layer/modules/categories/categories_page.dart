import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_lists.dart';
import 'package:grocery_market/presentation_layer/modules/categories/widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 240 / 250),
          itemCount: AppLists.catInfo.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              color: AppLists.catInfo[index]['catColor'],
              image: AppLists.catInfo[index]['catImage'],
              name: AppLists.catInfo[index]['catText'],
            );
          },
        ),
      ),
    );
  }
}
