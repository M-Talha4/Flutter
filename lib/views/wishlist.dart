import 'package:flutter/material.dart';
import 'package:flutter_git/controller/whishlist_controller.dart';
import 'package:flutter_git/widgets/custom_button.dart';
import 'package:flutter_git/widgets/custom_text.dart';
import 'package:get/get.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => WishListState();
}

class WishListState extends State<WishList> {
  @override
  void initState() {
    super.initState();
    Get.put(WishListController());
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
          width: width,
          height: height,
          child: GetBuilder<WishListController>(builder: (obj) {
            return Center(
              child: cText(text: obj.count.toString()),
            );
          })),
      floatingActionButton: CustomButton(
          onTap: () {
            WishListController().increment();

            // get.
          },
          text: "+"),
    ));
  }
}
