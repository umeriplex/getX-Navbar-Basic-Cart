import 'package:cart_system_getx/nav_bar/pages/home/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title.toString(), style: const TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: const Center(
          child: Text(
            "Home Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
