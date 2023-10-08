import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../views/home/homecreen.dart';
import '../views/wishlist.dart';

class HomeScreenController extends GetxController {
  // static GetxController get to => Get.find();

  late List<Widget> pages;
  late Widget content;

  @override
  void onInit() {
    super.onInit();
    pages = [
      const HomeScreen(),
      const WishList(),
    ];
    content = pages[0];
  }

  void setCurrentPage(String page) {
    switch (page) {
      case "home":
        content = pages[0];
        break;
      case "wishlist":
        content = pages[1];
        break;
      default:
        content = pages[0];
    }
    update(); // Call update to inform GetX that the state has changed.
  }

// Home Screen ...........................................................................

  var name = "Jhon Doe".obs;
  updateName(value) {
    name = value;
    update();
  }

  late Future<String> lazyValue = alwaysLate(); //State variable for our future

  Future<String> alwaysLate() {
    Duration duration = Duration(
      seconds: 3 + Random().nextInt(7),
    );
    return Future.delayed(
        duration, () => "It took me ${duration.inSeconds} sec to come!");
  }

  // Wishlist Screen ..............................................

  var count = 0;
  increment() {
    count++;
    update();
  }

  decrement() {
    count--;
    update();
  }
}
