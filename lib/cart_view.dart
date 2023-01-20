import 'package:cart_system_getx/nav_bar/pages/dashboard/dashboard.dart';
import 'package:cart_system_getx/total_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // increment decrement buttons
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text('Books', style: TextStyle(fontSize: 20)),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {cartController.addBook();},
                    icon: const Icon(Icons.add,color: Colors.black,),
                    color: Colors.redAccent,
                    focusColor: Colors.purple,
                    highlightColor: Colors.blueGrey,
                    hoverColor: Colors.deepOrangeAccent,
                  ),
                  const SizedBox(width: 20,),
                  Obx(() => Text(cartController.books.toString(),style: const TextStyle(fontSize: 22),)),
                  const SizedBox(width: 20,),
                  IconButton(
                    onPressed: () {cartController.removeBook();},
                    icon: const Icon(Icons.minimize,color: Colors.black,),
                    color: Colors.redAccent,
                    focusColor: Colors.purple,
                    highlightColor: Colors.blueGrey,
                    hoverColor: Colors.deepOrangeAccent,
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const Text('Pens', style: TextStyle(fontSize: 20)),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {cartController.addPens();},
                    icon: const Icon(Icons.add,color: Colors.black,),
                    color: Colors.redAccent,
                    focusColor: Colors.purple,
                    highlightColor: Colors.blueGrey,
                    hoverColor: Colors.deepOrangeAccent,
                  ),
                  const SizedBox(width: 20,),
                  Obx(() => Text(cartController.pens.toString(),style: const TextStyle(fontSize: 22),)),
                  const SizedBox(width: 20,),
                  IconButton(
                    onPressed: () {cartController.removePens();},
                    icon: const Icon(Icons.minimize,color: Colors.black,),
                    color: Colors.redAccent,
                    focusColor: Colors.purple,
                    highlightColor: Colors.blueGrey,
                    hoverColor: Colors.deepOrangeAccent,
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const TotalView());
                  },
                  child: const Text('Go to Total View')),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => MyDashBoard());
                  },
                  child: const Text('Go to NavBar View')),
            ],
          ),
        )
      ),
    );
  }
}
