import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/homescreen_controller.dart';
import '../../routes/routes_name.dart';
import '../../utils/colors.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeScreenController = Get.put(HomeScreenController());
    final textFieldControler = TextEditingController();
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.1, vertical: height * 0.03),
      child: SizedBox(
        width: width,
        height: height,
        child: GetBuilder<HomeScreenController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cText(
                  text: "${homeScreenController.name}",
                ),
                RectangularTextFormField(
                  controller: textFieldControler,
                  showlabel: true,
                  label: "Name",
                  hint: "fgsg",
                  bordercolor: black,
                ),
                Center(
                  child: CustomButton(
                      onTap: () {
                        // scaffoldKey.currentState?.openDrawer();

                        if (textFieldControler.text.isEmpty) {
                        } else {
                          homeScreenController.name.value =
                              textFieldControler.text;
                          homeScreenController.update();
                          // textFieldControler.text = "";
                          textFieldControler.clear();
                          // textFieldControler.dispose();
                        }
                      },
                      text: "Update Name"),
                ),
                Center(
                  child: CustomButton(
                      onTap: () {
                        // scaffoldKey.currentState?.openDrawer();
                        Get.offAllNamed(Routes.home);
                      },
                      text: "Reload"),
                ),
                FutureBuilder<String>(
                  future: homeScreenController.lazyValue,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data!);
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
                Center(
                  child: CustomButton(
                      onTap: () {
                        // scaffoldKey.currentState?.openDrawer();
                        homeScreenController.setCurrentPage("wishlist");
                      },
                      text: "Open WishList"),
                ),
              ],
            );
          },
        ),
      ),
    )));
  }
}
