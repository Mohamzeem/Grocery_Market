import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_market/helper/app_colors.dart';

class AppThemes {
  lightTheme() => ThemeData(
        fontFamily: 'Cairo',
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: kPrimLight),
          backgroundColor: kPrimLight,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: kBlack),
          actionsIconTheme: IconThemeData(color: kBlack),
        ),
        primaryColor: kPrimLight,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPrimLight,
        dividerColor: kPrimLight,
        iconTheme: const IconThemeData(color: kSecLight),
        listTileTheme: const ListTileThemeData(iconColor: kSecLight),
        popupMenuTheme: const PopupMenuThemeData(
          shadowColor: kSecLight,
          elevation: 5,
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(kSecLight),
              iconSize: MaterialStatePropertyAll(20)),
        ),
        switchTheme: const SwitchThemeData(
            thumbColor: MaterialStatePropertyAll(kSecLight),
            trackColor: MaterialStatePropertyAll(kBlack)),
        checkboxTheme: const CheckboxThemeData(
            checkColor: MaterialStatePropertyAll(kBlack),
            fillColor: MaterialStatePropertyAll(kSecLight)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: kBlack, foregroundColor: kSecLight),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: kSecLight)),
        cardTheme: CardTheme(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: const Color.fromARGB(255, 245, 252, 248),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            elevation: 50,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: kPrimLight,
            selectedItemColor: kSecLight,
            unselectedItemColor: kPrimDark),
        textTheme: TextTheme(
          titleLarge: TextStyle(
              color: kBlack, fontSize: 20.sp, fontWeight: FontWeight.w700),
          titleMedium: TextStyle(
              color: kBlack,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.lineThrough),
          titleSmall: TextStyle(
              color: kSecLight, fontSize: 15.sp, fontWeight: FontWeight.w900),
          displayLarge: TextStyle(
              color: kBlack, fontSize: 16.sp, fontWeight: FontWeight.w700),
          displayMedium: TextStyle(
            color: kBlack,
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
          ),
          displaySmall: TextStyle(
              color: kSecLight, fontSize: 18.sp, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              color: kSecLight, fontSize: 16.sp, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: kBlack, fontSize: 18.sp, fontWeight: FontWeight.w800),
          bodyLarge: TextStyle(
              color: kBlack,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.lineThrough),
          labelLarge: TextStyle(
              color: kSecLight, fontSize: 22.sp, fontWeight: FontWeight.w700),
          labelMedium: TextStyle(
              color: kGrey, fontSize: 21.sp, fontWeight: FontWeight.w800),
          labelSmall: TextStyle(
              color: kBlack, fontSize: 25.sp, fontWeight: FontWeight.w900),
          headlineLarge: TextStyle(
              color: kSecLight,
              fontSize: 17.sp,
              fontWeight: FontWeight.w800,
              decoration: TextDecoration.lineThrough),
          headlineMedium: TextStyle(
              color: kSecDark, fontSize: 17.sp, fontWeight: FontWeight.w800),
          headlineSmall: TextStyle(
              color: kSecLight, fontSize: 12.sp, fontWeight: FontWeight.w700),
        ),
      );
  darkTheme() => ThemeData(
        fontFamily: 'Cairo',
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
              statusBarColor: kPrimDark),
          backgroundColor: kPrimDark,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: kWhite),
          actionsIconTheme: IconThemeData(color: kWhite),
        ),
        primaryColor: kPrimDark,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: kPrimDark,
        dividerColor: Colors.black54,
        iconTheme: const IconThemeData(color: kSecDark),
        listTileTheme: const ListTileThemeData(iconColor: kSecDark),
        popupMenuTheme: const PopupMenuThemeData(
          shadowColor: kSecDark,
          elevation: 5,
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(kSecDark),
              iconSize: MaterialStatePropertyAll(20)),
        ),
        switchTheme: const SwitchThemeData(
            thumbColor: MaterialStatePropertyAll(kSecDark),
            trackColor: MaterialStatePropertyAll(Colors.white)),
        checkboxTheme: const CheckboxThemeData(
            checkColor: MaterialStatePropertyAll(Colors.white),
            fillColor: MaterialStatePropertyAll(kSecDark)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.white, foregroundColor: kSecDark),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: kSecDark)),
        cardTheme: CardTheme(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: const Color.fromARGB(95, 57, 56, 56),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: kSecDark,
            backgroundColor: kPrimDark,
            unselectedItemColor: kPrimLight),
        textTheme: TextTheme(
          titleLarge: TextStyle(
              color: kWhite, fontSize: 20.sp, fontWeight: FontWeight.w700),
          titleMedium: TextStyle(
              color: kWhite,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.lineThrough),
          titleSmall: TextStyle(
            color: kSecDark,
            fontSize: 15.sp,
            fontWeight: FontWeight.w900,
          ),
          displayLarge: TextStyle(
              color: kWhite, fontSize: 16.sp, fontWeight: FontWeight.w700),
          displayMedium: TextStyle(
            color: kWhite,
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
          ),
          displaySmall: TextStyle(
              color: kSecDark, fontSize: 18.sp, fontWeight: FontWeight.w600),
          bodySmall: TextStyle(
              color: kSecDark, fontSize: 16.sp, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(
              color: kWhite, fontSize: 18.sp, fontWeight: FontWeight.w800),
          bodyLarge: TextStyle(
              color: kWhite,
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.lineThrough),
          labelLarge: TextStyle(
              color: kSecDark, fontSize: 22.sp, fontWeight: FontWeight.w700),
          labelMedium: TextStyle(
              color: kGrey, fontSize: 21.sp, fontWeight: FontWeight.w800),
          labelSmall: TextStyle(
              color: kWhite, fontSize: 25.sp, fontWeight: FontWeight.w900),
          headlineLarge: TextStyle(
              color: kSecDark,
              fontSize: 17.sp,
              fontWeight: FontWeight.w800,
              decoration: TextDecoration.lineThrough),
          headlineMedium: TextStyle(
              color: kSecLight, fontSize: 17.sp, fontWeight: FontWeight.w800),
          headlineSmall: TextStyle(
              color: kSecDark, fontSize: 12.sp, fontWeight: FontWeight.w700),
        ),
      );
}
