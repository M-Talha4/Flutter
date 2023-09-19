import 'package:flutter/material.dart';
import 'package:flutter_git/utils/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_form_field.dart';
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
            backgroundColor: white,
            key: scaffoldKey,
            appBar: AppBar(),
            drawer: const DrawerPage(),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.1, vertical: height * 0.03),
              child: SizedBox(
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const cText(
                      text: "text",
                    ),
                    RectangularTextFormField(
                      showlabel: true,
                      label: "asf",
                      hint: "fgsg",
                      bordercolor: black,
                    ),
                    Center(
                      child: CustomButton(
                          onTap: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          text: "Open Drawer"),
                    ),
                  ],
                ),
              ),
            )));
  }
}
