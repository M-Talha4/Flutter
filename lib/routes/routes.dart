import 'package:get/get_navigation/get_navigation.dart';
import '../views/homescreen.dart';
import 'routes_name.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      transition: Transition.leftToRight,
    ),
  ];
}
