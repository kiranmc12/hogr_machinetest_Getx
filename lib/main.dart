import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_machinetest/routes/named_routes.dart';
import 'package:hogr_machinetest/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        getPages: MainRoutes.getPageList);
  }
}
