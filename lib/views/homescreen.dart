import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/custom_text.dart';

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
                height: height, width: width * 0.75, child: DrawerPage()),
            body: ElevatedButton(
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                child: const cText(text: "Open Drawer"))));
  }
}
