import 'package:flutter/material.dart';
import 'package:flutter_git/widgets/custom_button.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            key: scaffoldKey,
            drawer: SizedBox(
                height: height, width: width * 0.75, child: const DrawerPage()),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.03),
              child: SizedBox(
                width: width,
                height: height,
                child: Center(
                  child: RoundRectangularButton(
                      onTap: () {
                        scaffoldKey.currentState?.openDrawer();
                      },
                      text: "Open Drawer"),
                ),
              ),
            )));
  }
}
