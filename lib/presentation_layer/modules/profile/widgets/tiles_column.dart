import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_market/helper/show_dialog.dart';
import 'package:grocery_market/presentation_layer/modules/previous_orders/orders_page.dart';
import 'package:grocery_market/presentation_layer/modules/profile/widgets/theme_dialog.dart';
import 'package:grocery_market/presentation_layer/modules/recenty_viewed/recently_viewed_page.dart';
import 'package:grocery_market/presentation_layer/modules/wishlist_view/wishlist_page.dart';
import '../../../../business_logic/theme_bloc/theme_bloc.dart';
import '../../../../helper/app_colors.dart';
import 'profile_list_tile.dart';

class TilesColumn extends StatelessWidget {
  const TilesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Column(
          children: [
            ProfileListTile(
              leading: const Icon(IconlyLight.profile),
              title: 'Address',
              trailing: const Icon(IconlyLight.arrowRight2),
              onTap: () {
                CustomShowDialog(
                  context: context,
                  backGroundColor: state is LightThemeState ? kBlack : kWhite,
                  content: Container(),
                  //  CustomTextFormField(
                  //   keyboardType: TextInputType.text,
                  //   maxLines: 3,
                  //   hintText: 'Your Address',
                  //   borderColor:
                  //       state is LightThemeState ? kPrimLight : kPrimLight,
                  //   cursorColor:
                  //       state is LightThemeState ? kSecLight : kSecDark,
                  // ),
                  title: 'Update Address',
                  icon: const Icon(CupertinoIcons.building_2_fill),
                  btnTxt: 'Update', onPressed: () {},
                );
              },
            ),
            ProfileListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OrdersPage(),
                  )),
              leading: const Icon(IconlyLight.bag),
              title: 'Orders',
              trailing: const Icon(IconlyLight.arrowRight2),
            ),
            ProfileListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WishListPage(),
                ),
              ),
              leading: const Icon(IconlyLight.heart),
              title: 'Wish List',
              trailing: const Icon(IconlyLight.arrowRight2),
            ),
            ProfileListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewedPage(),
                  )),
              leading: const Icon(IconlyLight.show),
              title: 'Viewed',
              trailing: const Icon(IconlyLight.arrowRight2),
            ),
            ProfileListTile(
              leading: const Icon(IconlyLight.unlock),
              title: 'Forgot Password',
              trailing: const Icon(IconlyLight.arrowRight2),
            ),
            ProfileListTile(
              onTap: () => ThemeShowDialog(
                context: context,
                backGroundColor: state is LightThemeState ? kBlack : kWhite,
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        context.read<ThemeBloc>().add(LightThemeEvent());
                        state is LightThemeState
                            ? null
                            : Navigator.pop(context);
                      },
                      child: Text(
                        'LightMode',
                        style: state is LightThemeState
                            ? Theme.of(context).textTheme.headlineLarge
                            : Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.read<ThemeBloc>().add(DarkThemeEvent());
                        state is DarkhemeState ? null : Navigator.pop(context);
                      },
                      child: Text(
                        'DarkMode',
                        style: state is DarkhemeState
                            ? Theme.of(context).textTheme.headlineLarge
                            : Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                  ],
                ),
                title: 'Change Theme?',
                icon: Icon(state is LightThemeState
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode_outlined),
              ),
              title: 'Theme Mode',
              leading: Icon(state is LightThemeState
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined),
              trailing: const Icon(IconlyLight.arrowRight2),
            ),
            ProfileListTile(
              leading: const Icon(IconlyLight.logout),
              title: 'Log Out',
              trailing: const Icon(IconlyLight.arrowRight2),
              onTap: () => CustomShowDialog(
                context: context,
                backGroundColor: state is LightThemeState ? kBlack : kPrimLight,
                icon: const Icon(IconlyBold.logout),
                content: Text(
                  'Are You Sure You Want Log Out?',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                title: 'Log Out',
                btnTxt: 'Sure',
                onPressed: () {},
              ),
            ),
          ],
        );
      },
    );
  }
}
