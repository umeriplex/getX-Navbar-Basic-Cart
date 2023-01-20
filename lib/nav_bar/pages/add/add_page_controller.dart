import 'package:get/get.dart';

class AddPageController extends GetxController {

  RxInt val = 0.obs;
  void increment() {
    val.value++;
  }

}