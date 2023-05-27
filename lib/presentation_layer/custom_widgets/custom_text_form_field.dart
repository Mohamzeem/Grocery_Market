import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_colors.dart';
import '../../business_logic/theme_bloc/theme_bloc.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.keyboardType,
    required this.hintText,
    required this.newValue,
    required this.validationMsg,
    required this.prefixIcon,
    required this.password,
  }) : super(key: key);
  final TextEditingController controller;
  final FocusNode focusNode;
  final TextInputType keyboardType;
  final String hintText;
  final String newValue;
  final String validationMsg;
  final IconData prefixIcon;
  final bool password;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
          child: TextFormField(
            controller: widget.controller,
            validator: (value) {
              value = widget.newValue;
              if (value.isEmpty) {
                return widget.validationMsg;
              } else {
                return null;
              }
            },
            focusNode: widget.focusNode,
            keyboardType: widget.keyboardType,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: kWhite,
              decoration: TextDecoration.none,
            ),
            cursorColor: state is LightThemeState ? kSecLight : kSecDark,
            cursorHeight: 30,
            maxLines: 1,
            obscureText: widget.password ? isVisible : widget.password,
            // textInputAction: TextInputAction.next,
            // onEditingComplete: () =>
            //     FocusScope.of(context).requestFocus(widget.focusNode),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 10.h),
              suffixIcon: widget.password
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                        isVisible ? Icons.visibility_off : Icons.visibility,
                        size: 25,
                        color: state is LightThemeState ? kSecLight : kSecDark,
                      ),
                    )
                  : null,
              prefixIcon: InkWell(
                onTap: () {},
                child: Icon(
                  size: 28,
                  widget.prefixIcon,
                  color: state is LightThemeState ? kSecLight : kSecDark,
                ),
              ),
              // fillColor: kGrey.shade200,
              // filled: true,
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.bodySmall,
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 2,
                  color: kWhite,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 2,
                  color: kWhite,
                ),
              ),
              disabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 2,
                  color: kWhite,
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 2,
                  color: kWhite,
                ),
              ),
              errorBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 2,
                  color: kWhite,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
