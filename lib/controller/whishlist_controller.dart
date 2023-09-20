import 'package:get/get.dart';

class WishListController extends GetxController {
  static GetxController get to => Get.find();

  int count = 0;
  increment() {
    count++;
    print(count);
  }
}
