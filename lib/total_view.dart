import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_controller.dart';
class TotalView extends StatefulWidget {
  const TotalView({Key? key}) : super(key: key);

  @override
  State<TotalView> createState() => _TotalViewState();
}

class _TotalViewState extends State<TotalView> {
  CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Total Items',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20,),
            Obx(() =>  Text((cartController.pens.value + cartController.books.value).toString(),
              style: const TextStyle(fontSize: 30),
            ),)
          ],
        ),
      ),
    );
  }
}
