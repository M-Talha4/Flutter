import 'package:flutter_git/views/wishlist.dart';
import 'package:flutter_git/widgets/custom_drawer.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../views/homescreen.dart';
import 'routes_name.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.drawer,
      page: () => const Cdrawer(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: Routes.wishlist,
      page: () => const WishList(),
      transition: Transition.leftToRight,
    ),
  ];
}
