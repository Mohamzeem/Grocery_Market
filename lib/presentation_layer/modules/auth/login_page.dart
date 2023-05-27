import 'package:flutter/material.dart';
import 'package:grocery_market/helper/app_colors.dart';
import 'package:grocery_market/presentation_layer/modules/auth/widgets/swipers.dart';
import 'widgets/login_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            const SwipersWidget(),
            Container(
              decoration: BoxDecoration(color: kBlack.withOpacity(0.5)),
            ),
            const LoginButtons()
          ],
        ),
      ),
    );
  }
}
