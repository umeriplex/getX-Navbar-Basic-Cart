import 'package:cart_system_getx/cart_controller.dart';
import 'package:cart_system_getx/nav_bar/pages/add/add_page_controller.dart';
import 'package:cart_system_getx/nav_bar/pages/home/home_page_controller.dart';
import 'package:cart_system_getx/nav_bar/pages/messages/messages_page_controller.dart';
import 'package:cart_system_getx/nav_bar/pages/users/user_page_controller.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<UserPageController>(() => UserPageController());
    Get.lazyPut<MessagesPageController>(() => MessagesPageController());
    Get.lazyPut<AddPageController>(() => AddPageController());


  }
}