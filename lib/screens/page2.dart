import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/constants.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';
import 'package:hogr_machinetest/routes/routes.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      foregroundColor: kwhite,
        centerTitle: true,
        backgroundColor: kblack,
        title: Text(
          'PAGE2',
          style: roboto(),
        ),
      ),
      body: Center(
        child: OutlinedButton(
          style: outlinedButtonStyle,
          onPressed: () {
            Get.toNamed(Routes.page3, id: 1);
          },
          child: Text(
            'Page3',
            style: roboto(color: kblack, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
