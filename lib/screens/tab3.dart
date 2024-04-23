import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/constants.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblack,
        title: Text(
          'Page1',
          style: roboto(color: kwhite),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          style: outlinedButtonStyle,
          child: Text("Tab2",
              style: roboto(color: kblack, fontWeight: FontWeight.bold)),
          onPressed: () {
            Get.find<HomeController>().currentIndex.value = 1;
            Get.find<HomeController>().tabController.animateTo(1);
          },
        ),
      ),
    );
  }
}
