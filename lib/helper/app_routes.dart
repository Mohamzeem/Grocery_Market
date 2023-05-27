import 'package:grocery_market/presentation_layer/modules/all_products/all_products_page.dart';
import 'package:grocery_market/presentation_layer/modules/auth/forgot_password_page.dart';
import 'package:grocery_market/presentation_layer/modules/auth/register_page.dart';
import 'package:grocery_market/presentation_layer/modules/cart/cart_page.dart';
import 'package:grocery_market/presentation_layer/modules/categories/categories_page.dart';
import 'package:grocery_market/presentation_layer/modules/control/control_page.dart';
import 'package:grocery_market/presentation_layer/modules/home/home_page.dart';
import 'package:grocery_market/presentation_layer/modules/previous_orders/orders_page.dart';
import 'package:grocery_market/presentation_layer/modules/profile/profile_page.dart';
import 'package:grocery_market/presentation_layer/modules/recenty_viewed/recently_viewed_page.dart';
import 'package:grocery_market/presentation_layer/modules/sale_view/sales_page.dart';
import 'package:grocery_market/presentation_layer/modules/wishlist_view/wishlist_page.dart';
import '../presentation_layer/modules/auth/login_page.dart';

class Routes {
  static const logInScreen = '/logInScreen';
  static const registerScreen = '/registerScreen';
  static const controlScreen = '/controlScreen';
  static const allProductsScreen = '/allProductsScreen';
  static const cartScreen = '/cartScreen';
  static const categoriesScreen = '/categoriesScreen';
  static const homeScreen = '/homeScreen';
  static const ordersScreen = '/ordersScreen';
  static const productDetailsScreen = '/productDetailsScreen';
  static const profileScreen = '/profileScreenScreen';
  static const viewedScreen = '/viewedScreen';
  static const saleScreen = '/saleScreen';
  static const wishListScreen = '/wishListScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
}

class AppRoutes {
  static final routes = {
    Routes.logInScreen: (context) => const LoginPage(),
    Routes.registerScreen: (context) => const RegisterPage(),
    Routes.controlScreen: (context) => const ControlPage(),
    Routes.allProductsScreen: (context) => const AllProductsPage(),
    Routes.cartScreen: (context) => const CartPage(),
    Routes.categoriesScreen: (context) => const CategoriesPage(),
    Routes.homeScreen: (context) => const HomePage(),
    Routes.ordersScreen: (context) => const OrdersPage(),
    // Routes.productDetailsScreen: (context) => const ProductDetailsPage(image: image, name: name, price: price),
    Routes.profileScreen: (context) => const ProfilePage(),
    Routes.viewedScreen: (context) => const ViewedPage(),
    Routes.saleScreen: (context) => const SalesPage(),
    Routes.wishListScreen: (context) => const WishListPage(),
    Routes.forgotPasswordScreen: (context) => const ForgotPasswordPage(),
  };
}
