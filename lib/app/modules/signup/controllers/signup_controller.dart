import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
    final emailC = TextEditingController(text: "tesdaftar@gmail.com");
  final passC = TextEditingController(text: "123123");

  
  @override
  void onClose() {
    // TODO: implement onClose
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
