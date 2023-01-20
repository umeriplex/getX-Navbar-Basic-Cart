import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../add/add_page_controller.dart';


class UsersPage extends StatelessWidget {
  final AddPageController controller = Get.put(AddPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text(
          controller.val.toString(),
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
