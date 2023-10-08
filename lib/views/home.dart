import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';
import '../widgets/custom_drawer.dart';
import '../controller/homescreen_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final homeController = Get.put(HomeScreenController());

    return SafeArea(
        child: Scaffold(
      backgroundColor: white,
      // key: scaffoldKey,
      appBar: AppBar(),
      drawer: const DrawerPage(),
      body: GetBuilder<HomeScreenController>(
        builder: (obj) {
          return homeController.content;
        },
      ),
    ));
  }
}
