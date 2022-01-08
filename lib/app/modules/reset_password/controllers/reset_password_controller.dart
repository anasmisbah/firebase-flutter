import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final emailC = TextEditingController(text: "anasmisbah1110@gmail.com");

  
  @override
  void onClose() {
    // TODO: implement onClose
    emailC.dispose();
    super.onClose();
  }
}
