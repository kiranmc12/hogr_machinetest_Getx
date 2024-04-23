import 'package:flutter/material.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/utlis/constants.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';
import 'package:hogr_machinetest/routes/routes.dart';

import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kblack,
        centerTitle: true,
        title: Text(
          'PAGE1',
          style: roboto(color: kwhite),
        ),
      ),
      body: Center(
        child: OutlinedButton(
          style: outlinedButtonStyle,
          onPressed: () {
            if (controller.currentIndex.value == 0) {
              Get.toNamed(Routes.page2, id: 1);
            } else if (controller.currentIndex.value == 1) {
              Get.toNamed(Routes.page3);
            } else if (controller.currentIndex.value == 2) {
              Get.find<HomeController>().currentIndex.value = 1;
              Get.find<HomeController>().tabController.animateTo(1);
            }
          },
          child: Text(
            controller.currentIndex.value == 0
                ? 'Page2'
                : controller.currentIndex.value == 1
                    ? 'Page3'
                    : 'Tab2',
            style: roboto(fontWeight: FontWeight.bold, color: kblack),
          ),
        ),
      ),
    );
  }
}
