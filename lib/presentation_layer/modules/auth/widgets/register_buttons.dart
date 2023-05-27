import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_routes.dart';
import '../../../../../helper/app_colors.dart';
import '../../../custom_widgets/custom_elevated_button.dart';
import '../../../custom_widgets/custom_sized_box.dart';
import '../../../custom_widgets/custom_text_form_field.dart';

class RegisterButtons extends StatefulWidget {
  const RegisterButtons({super.key});

  @override
  State<RegisterButtons> createState() => _RegisterButtonsState();
}

class _RegisterButtonsState extends State<RegisterButtons> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final addressController = TextEditingController();
  final nameFocusNodeController = FocusNode();
  final emailFocusNodeController = FocusNode();
  final passwordFocusNodeController = FocusNode();
  final addressFocusNodeController = FocusNode();
  final keyForm = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    addressController.dispose();
    nameFocusNodeController.dispose();
    emailFocusNodeController.dispose();
    passwordFocusNodeController.dispose();
    addressFocusNodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Form(
          key: keyForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSizedBox(height: 0.07, width: 1),
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w800,
                  color: kWhite,
                ),
              ),
              Text(
                'Register to continue',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: kWhite,
                ),
              ),
              const CustomSizedBox(height: 0.05, width: 1),
              CustomTextFormField(
                controller: nameController,
                focusNode: nameFocusNodeController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Full Name',
                prefixIcon: Icons.person_2_rounded,
                newValue: nameController.text,
                validationMsg: 'Invalid Name',
                password: false,
              ),
              const CustomSizedBox(height: 0.02, width: 1),
              CustomTextFormField(
                controller: emailController,
                focusNode: emailFocusNodeController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Email',
                prefixIcon: Icons.email_rounded,
                newValue: emailController.text,
                validationMsg: 'Invalid Email',
                password: false,
              ),
              const CustomSizedBox(height: 0.02, width: 1),
              CustomTextFormField(
                controller: passwordController,
                focusNode: passwordFocusNodeController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Password',
                prefixIcon: Icons.lock_rounded,
                newValue: passwordController.text,
                validationMsg: 'Invalid Password',
                password: true,
              ),
              const CustomSizedBox(height: 0.02, width: 1),
              CustomTextFormField(
                controller: addressController,
                focusNode: addressFocusNodeController,
                keyboardType: TextInputType.text,
                hintText: 'Shipping Address',
                prefixIcon: Icons.local_shipping_rounded,
                newValue: addressController.text,
                validationMsg: 'Invalid Address',
                password: false,
              ),
              const CustomSizedBox(height: 0.04, width: 1),
              CustomElevButton(
                onPressed: () {
                  keyForm.currentState!.save();
                  if (keyForm.currentState!.validate()) {}
                },
                text: 'Sign Up',
                textStyle: Theme.of(context).textTheme.bodyMedium!,
                height: 0.05,
                width: 1,
              ),
              const CustomSizedBox(height: 0.02, width: 1),
              Row(
                children: [
                  Text(
                    'You have an account?',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: kWhite,
                    ),
                  ),
                  TextButton(
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, Routes.logInScreen),
                      child: Text(
                        'Log In?',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: kWhite,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
