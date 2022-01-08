import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_firebase/app/controllers/auth_controller.dart';
import 'package:learn_firebase/app/routes/app_pages.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              controller: controller.emailC,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                print(controller.emailC.text);
                authC.resetPassword(controller.emailC.text);
              },
              child: Text("RESET"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun ? "),
                TextButton(
                  onPressed: () => Get.back(),
                  child: Text("Login"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
