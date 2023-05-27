import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../helper/app_colors.dart';
import '../../../custom_widgets/custom_elevated_button.dart';
import '../../../custom_widgets/custom_sized_box.dart';
import '../../../custom_widgets/custom_text_form_field.dart';

class ForgotPasswordButtons extends StatefulWidget {
  const ForgotPasswordButtons({super.key});

  @override
  State<ForgotPasswordButtons> createState() => _ForgotPasswordButtonsState();
}

class _ForgotPasswordButtonsState extends State<ForgotPasswordButtons> {
  final emailController = TextEditingController();
  final emailFocusNodeController = FocusNode();
  final keyForm = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    emailFocusNodeController.dispose();
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
              const CustomSizedBox(height: 0.08, width: 1),
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_rounded),
                  ),
                  const CustomSizedBox(height: 0, width: 0.03),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w800,
                      color: kWhite,
                    ),
                  ),
                ],
              ),
              const CustomSizedBox(height: 0.044, width: 1),
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
              const CustomSizedBox(height: 0.04, width: 1),
              CustomElevButton(
                onPressed: () {
                  keyForm.currentState!.save();
                  if (keyForm.currentState!.validate()) {}
                },
                text: 'Reset Password',
                textStyle: Theme.of(context).textTheme.bodyMedium!,
                height: 0.05,
                width: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
