import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_routes.dart';
import '../../../../../helper/app_colors.dart';
import '../../../custom_widgets/custom_elevated_button.dart';
import '../../../custom_widgets/custom_sized_box.dart';
import '../../../custom_widgets/custom_text_form_field.dart';
import 'google_button.dart';
import 'guest_button.dart';

class LoginButtons extends StatefulWidget {
  const LoginButtons({super.key});

  @override
  State<LoginButtons> createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final focusNodeEmailController = FocusNode();
  final focusNodePasswordController = FocusNode();
  final keyForm = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    focusNodeEmailController.dispose();
    focusNodePasswordController.dispose();
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
                'Welcome Back',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w800,
                  color: kWhite,
                ),
              ),
              Text(
                'Log in to continue',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: kWhite,
                ),
              ),
              const CustomSizedBox(height: 0.05, width: 1),
              CustomTextFormField(
                controller: emailController,
                focusNode: focusNodeEmailController,
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
                focusNode: focusNodePasswordController,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Password',
                prefixIcon: Icons.lock_rounded,
                newValue: passwordController.text,
                validationMsg: 'Invalid Password',
                password: true,
              ),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                      onPressed: () => Navigator.pushNamed(
                          context, Routes.forgotPasswordScreen),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: kWhite,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
              CustomElevButton(
                onPressed: () {
                  keyForm.currentState!.save();
                  if (keyForm.currentState!.validate()) {}
                },
                text: 'Log In',
                textStyle: Theme.of(context).textTheme.bodyMedium!,
                height: 0.05,
                width: 1,
              ),
              const CustomSizedBox(height: 0.02, width: 1),
              const GoogleButton(),
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    thickness: 1,
                    color: kWhite,
                  )),
                  Text(
                    '  OR  ',
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w500,
                      color: kWhite,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const Expanded(
                      child: Divider(
                    thickness: 1,
                    color: kWhite,
                  ))
                ],
              ),
              const GuestButton(),
              Row(
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: kWhite,
                    ),
                  ),
                  TextButton(
                      onPressed: () => Navigator.pushReplacementNamed(
                          context, Routes.registerScreen),
                      child: Text(
                        'Sign Up?',
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
