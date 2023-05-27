import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_market/helper/app_lists.dart';
import 'package:badges/badges.dart' as badges;

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

var currentPageIndex = 0;

class _ControlPageState extends State<ControlPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Scaffold(
      appBar: currentPageIndex == 1 ? _appBar() : null,
      body: AppLists.pagesList[currentPageIndex]['pageName'],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(
        AppLists.pagesList[currentPageIndex]['pageTitle'],
        style: Theme.of(context).textTheme.displayMedium,
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentPageIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) => setState(() {
        currentPageIndex = value;
      }),
      items: [
        BottomNavigationBarItem(
            icon: Icon(
                currentPageIndex == 0 ? IconlyBold.home : IconlyLight.home),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(currentPageIndex == 1
                ? IconlyBold.category
                : IconlyLight.category),
            label: 'Categories'),
        BottomNavigationBarItem(
            icon: badges.Badge(
                badgeStyle: badges.BadgeStyle(badgeColor: Colors.grey.shade300),
                position: badges.BadgePosition.topEnd(top: -15, end: -10),
                badgeContent: Text(
                  '10',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                child: Icon(
                    currentPageIndex == 2 ? IconlyBold.buy : IconlyLight.buy)),
            label: 'Cart'),
        BottomNavigationBarItem(
            icon: Icon(
                currentPageIndex == 3 ? IconlyBold.user2 : IconlyLight.user2),
            label: 'Profile'),
      ],
    );
  }
}
