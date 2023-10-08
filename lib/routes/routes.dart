import '../views/wishlist.dart';
import '../widgets/custom_drawer.dart';
import '../views/home.dart';
import 'package:get/get_navigation/get_navigation.dart';
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
      page: () => const Home(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Routes.wishlist,
      page: () => const WishList(),
      transition: Transition.zoom,
    ),
  ];
}
