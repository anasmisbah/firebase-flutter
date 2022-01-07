import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_firebase/app/controllers/auth_controller.dart';
import 'package:learn_firebase/app/modules/home/views/home_view.dart';
import 'package:learn_firebase/app/modules/login/views/login_view.dart';
import 'package:learn_firebase/app/utils/loading.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: authC.stramAuthStatus,
      builder: (context, snapshot) {
        print(snapshot);
        if (snapshot.connectionState == ConnectionState.active) {
          return GetMaterialApp(
            title: "Application",
            initialRoute: snapshot.data != null?Routes.HOME: Routes.LOGIN,
            getPages: AppPages.routes,
            // home: snapshot.data != null? HomeView(): LoginView(),
          );
        }
        return LoadingView();
      },
    );
  }
}
