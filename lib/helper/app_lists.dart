import 'package:flutter/animation.dart';
import '../presentation_layer/modules/cart/cart_page.dart';
import '../presentation_layer/modules/categories/categories_page.dart';
import '../presentation_layer/modules/home/home_page.dart';
import '../presentation_layer/modules/profile/profile_page.dart';

class AppLists {
  static final List<Map<String, dynamic>> productsList = [
    {
      'productImage': 'assets/images/products/almond.png',
      'productName': 'Almond',
      'productPrice': 25.0,
      'productSalePrice': 20.0,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/products/avocado.png',
      'productName': 'Avocado',
      'productPrice': 2.0,
      'productSalePrice': 1.5,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/products/bell-pepper.png',
      'productName': 'Bell',
      'productPrice': 0.2,
      'productSalePrice': 0.15,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/products/blueberry.png',
      'productName': 'Blueberry',
      'productPrice': 1.4,
      'productSalePrice': 1.0,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/broccoli.png',
      'productName': 'Broccoli',
      'productPrice': 0.42,
      'productSalePrice': 0.38,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/cabbage.png',
      'productName': 'cabbage',
      'productPrice': 1.72,
      'productSalePrice': 1.5,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/capsicum.png',
      'productName': 'capsicum',
      'productPrice': 2.2,
      'productSalePrice': 1.5,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/carrot.png',
      'productName': 'carrot',
      'productPrice': 0.9,
      'productSalePrice': 0.75,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/cherries.png',
      'productName': 'cherries',
      'productPrice': 0.52,
      'productSalePrice': 0.4,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/dragon-fruit.png',
      'productName': 'Dragon Fruit',
      'productPrice': 1.52,
      'productSalePrice': 1.3,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/products/eggplant.png',
      'productName': 'Eggplant',
      'productPrice': 1.92,
      'productSalePrice': 1.5,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/kiwi.png',
      'productName': 'Kiwi',
      'productPrice': 1.66,
      'productSalePrice': 1.2,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/mango.png',
      'productName': 'Mango',
      'productPrice': 2.2,
      'productSalePrice': 1.8,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/mushrooms.png',
      'productName': 'Mushrooms',
      'productPrice': 0.2,
      'productSalePrice': 0.15,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/onion.png',
      'productName': 'onion',
      'productSalePrice': 1.5,
      'productPrice': 0.7,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/pea.png',
      'productName': 'Pea',
      'productPrice': 0.62,
      'productSalePrice': 0.5,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/peach.png',
      'productName': 'Peach',
      'productSalePrice': 1.5,
      'productPrice': 1.15,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/products/pear.png',
      'productName': 'Pear',
      'productPrice': 1.5,
      'productSalePrice': 1.0,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/pineapple.png',
      'productName': 'pineapple',
      'productPrice': 0.62,
      'productSalePrice': 0.6,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/pomegranate.png',
      'productName': 'pomegranate',
      'productPrice': 1.02,
      'productSalePrice': 1.2,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/products/pumpkin.png',
      'productName': 'Pumpkin',
      'productPrice': 0.99,
      'productSalePrice': 0.7,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/products/tomato.png',
      'productName': 'Tomato',
      'productPrice': 1.0,
      'productSalePrice': 0.8,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/products/watermelon.png',
      'productName': 'Watermelon',
      'productPrice': 3.2,
      'productSalePrice': 2.8,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/sales/apple.png',
      'productName': 'Apple',
      'productPrice': 0.65,
      'productSalePrice': 0.5,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/sales/banana.png',
      'productName': 'Banana',
      'productPrice': 0.35,
      'productSalePrice': 0.26,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/sales/milk.png',
      'productName': 'Milk',
      'productPrice': 0.19,
      'productSalePrice': 0.15,
      'onSale': false,
    },
    {
      'productImage': 'assets/images/sales/orange.png',
      'productName': 'Orange',
      'productPrice': 0.49,
      'productSalePrice': 0.3,
      'onSale': true,
    },
    {
      'productImage': 'assets/images/sales/tea.png',
      'productName': 'Tea',
      'productPrice': 0.32,
      'productSalePrice': 0.29,
      'onSale': true,
    },
  ];

  static final List<Map<String, dynamic>> salesList = [
    {'salesImage': 'assets/images/sales/apple.png', 'salesName': 'Apple'},
    {'salesImage': 'assets/images/sales/banana.png', 'salesName': 'Banana'},
    {'salesImage': 'assets/images/sales/milk.png', 'salesName': 'Milk'},
    {'salesImage': 'assets/images/sales/orange.png', 'salesName': 'Orange'},
    {'salesImage': 'assets/images/sales/tea.png', 'salesName': 'Tea'}
  ];

  static final List<Map<String, dynamic>> catInfo = [
    {
      'catImage': 'assets/images/categories/fruits.png',
      'catText': '              Fruits',
      'catColor': const Color.fromARGB(255, 213, 224, 119),
    },
    {
      'catImage': 'assets/images/categories/veg.png',
      'catText': '         Vegetables',
      'catColor': const Color.fromARGB(255, 234, 155, 71),
    },
    {
      'catImage': 'assets/images/categories/Spinach.png',
      'catText': '              Herbs',
      'catColor': const Color.fromARGB(255, 199, 157, 148),
    },
    {
      'catImage': 'assets/images/categories/nuts.png',
      'catText': '               Nuts',
      'catColor': const Color.fromARGB(255, 214, 180, 226),
    },
    {
      'catImage': 'assets/images/categories/spices.png',
      'catText': '             Spices',
      'catColor': const Color.fromARGB(255, 185, 223, 243),
    },
    {
      'catImage': 'assets/images/categories/grains.png',
      'catText': '             Grains',
      'catColor': const Color.fromARGB(255, 118, 176, 207),
    },
  ];

  static final List<Map<String, dynamic>> pagesList = [
    {'pageName': const HomePage(), 'pageTitle': 'Home Page'},
    {'pageName': const CategoriesPage(), 'pageTitle': 'Categories'},
    {'pageName': const CartPage(), 'pageTitle': 'Cart Page'},
    {'pageName': const ProfilePage(), 'pageTitle': 'Profile'},
  ];

  static final List<String> offerImages = [
    'assets/images/offers/Offer1.jpg',
    'assets/images/offers/Offer2.jpg',
    'assets/images/offers/Offer3.jpg',
    'assets/images/offers/Offer4.jpg'
  ];

  static final List<String> swiperImages = [
    'assets/images/swipers/food.jpg',
    'assets/images/swipers/cart.jpg',
    'assets/images/swipers/laptop.jpg',
    'assets/images/swipers/mobile.png',
    'assets/images/swipers/vegetables.jpg',
    'assets/images/swipers/store.jpg'
  ];
}
