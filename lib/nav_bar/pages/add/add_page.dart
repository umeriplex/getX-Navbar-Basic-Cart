import 'package:cart_system_getx/nav_bar/pages/add/add_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPage extends GetView<AddPageController> {

  int counter=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text(
                  controller.val.string
              )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary:Colors.redAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                child: const Text("Increase"),
                onPressed: (){
                  controller.increment();
                },
              ),


            ],
          ),
        ),
      ),
    );;
  }
}
