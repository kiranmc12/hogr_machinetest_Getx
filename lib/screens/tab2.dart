import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/constants.dart';
import 'package:hogr_machinetest/routes/routes.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: OutlinedButton(
          style: outlinedButtonStyle,
          child:  Text("Page 3",style: roboto(color: kblack,fontWeight: FontWeight.bold),),
          onPressed: () {
            Get.toNamed(Routes.page3);
          },
        ),
      ),
    );
  }
}