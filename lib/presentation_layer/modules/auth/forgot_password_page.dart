import 'package:flutter/material.dart';
import 'package:grocery_market/helper/app_colors.dart';
import 'package:grocery_market/presentation_layer/modules/auth/widgets/forgot_password_buttons.dart';
import 'package:grocery_market/presentation_layer/modules/auth/widgets/swipers.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        // appBar: _appBar(context),
        body: Stack(
          children: [
            const SwipersWidget(),
            Container(
              decoration: BoxDecoration(color: kBlack.withOpacity(0.5)),
            ),
            const ForgotPasswordButtons(),
          ],
        ),
      ),
    );
  }
}
