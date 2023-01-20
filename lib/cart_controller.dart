import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxInt books = 0.obs;
  RxInt pens = 0.obs;
  
  void addBook() {
    books.value++;
  }
  void removeBook() {
    if(books.value <= 0){
      Get.snackbar(
          'Aby OO',
          'Bawla Hogya Hai Kiya ??',
          snackPosition: SnackPosition.BOTTOM,
        barBlur: 20,
        duration: const Duration(seconds: 2),
        icon: const Icon(Icons.error),
      );
    }
    else {
      books.value--;
    }
  }

  void addPens() {
    pens.value++;
  }
  void removePens() {
    if(pens.value <= 0){
      Get.snackbar(
        'Aby OO',
        'Bawla Hogya Hai Kiya ??',
        snackPosition: SnackPosition.BOTTOM,
        barBlur: 20,
        duration: const Duration(seconds: 2),
        icon: const Icon(Icons.error),
      );
    }
    else {
      pens.value--;
    }
  }
}