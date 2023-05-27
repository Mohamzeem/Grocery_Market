import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_market/helper/app_colors.dart';
import 'package:grocery_market/presentation_layer/modules/profile/widgets/tiles_column.dart';
import '../../../business_logic/theme_bloc/theme_bloc.dart';
import '../../custom_widgets/snack_bar.dart';
import 'widgets/name_row.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: BlocConsumer<ThemeBloc, ThemeState>(listener: (context, state) {
          if (state is LightThemeState) {
            ShowSnackBar().showSuccessSnackBar(
                context: context,
                message: 'Light Mode On',
                textStyle: Theme.of(context).textTheme.displayLarge!,
                color: kSecLight);
          } else if (state is DarkhemeState) {
            ShowSnackBar().showSuccessSnackBar(
                context: context,
                message: 'Dark Mode On',
                textStyle: Theme.of(context).textTheme.displayLarge!,
                color: kSecDark);
          }
        }, builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NameRow(),
              Divider(
                thickness: 1,
                color: state is LightThemeState ? kSecLight : kSecDark,
              ),
              const TilesColumn()
            ],
          );
        }),
      ),
    );
  }
}
