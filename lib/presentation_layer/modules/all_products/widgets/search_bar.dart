import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../helper/app_colors.dart';

class AllProductsSearchBar extends StatelessWidget {
  const AllProductsSearchBar({
    super.key,
    required this.focusNode,
    required this.textController,
  });

  final FocusNode focusNode;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kBottomNavigationBarHeight,
      child: TextFormField(
        focusNode: focusNode,
        maxLines: 1,
        controller: textController,
        keyboardType: TextInputType.text,
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: kBlack,
            decoration: TextDecoration.none),
        cursorColor: kBlack,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () {
              textController.clear();
              focusNode.unfocus();
            },
            child: const Icon(
              Icons.close,
              color: kBlack,
            ),
          ),
          prefixIcon: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.search,
              color: kBlack,
            ),
          ),
          fillColor: kGreyShade200,
          filled: true,
          hintText: 'What You Need?',
          hintStyle: Theme.of(context).textTheme.bodySmall,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kGreyShade200,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kGreyShade200,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kGreyShade200,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kGreyShade200,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kGreyShade200,
            ),
          ),
        ),
      ),
    );
  }
}
