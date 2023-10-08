import 'package:flutter/material.dart';
import 'package:flutter_git/widgets/custom_button.dart';
import 'package:flutter_git/widgets/custom_text.dart';
import 'package:get/get.dart';
import '../controller/homescreen_controller.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
          width: width,
          height: height,
          child: GetBuilder<HomeScreenController>(builder: (obj) {
            return Center(
              child: cText(
                text: controller.count.toString(),
                // obj.count.toString(),
              ),
            );
          })),
      floatingActionButton: SizedBox(
        height: height * 0.14,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                const Expanded(child: SizedBox()),
                CustomButton(
                    onTap: () {
                      controller.increment();
                      // Get.find<HomeScreenController>().increment();
                    },
                    text: "+"),
                const Expanded(child: SizedBox()),
                CustomButton(
                    onTap: () {
                      controller.decrement();
                    },
                    text: "-"),
              ],
            ),
            CustomButton(
                onTap: () {
                  controller.setCurrentPage("home");
                },
                text: "Go Back"),
          ],
        ),
      ),
    ));
  }
}
