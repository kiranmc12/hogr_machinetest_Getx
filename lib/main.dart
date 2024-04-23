import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_machinetest/routes/routes.dart';
import 'package:hogr_machinetest/screens/home.dart';
import 'package:hogr_machinetest/screens/page1.dart';
import 'package:hogr_machinetest/screens/page2.dart';
import 'package:hogr_machinetest/screens/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homeScreen,
      getPages: [
        GetPage(
          name: Routes.homeScreen,
          page: () => Home(),
        ),
        GetPage(
          name: Routes.page1,
          page: () => Page1(),
        ),
        GetPage(
          name: Routes.page2,
          page: () => Page2(),
        ),
        GetPage(
          name: Routes.page3,
          page: () => Page3(),
        ),
      ],
    );
  }
}
