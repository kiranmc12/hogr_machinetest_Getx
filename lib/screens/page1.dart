import 'package:flutter/material.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/constants.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';
import 'package:hogr_machinetest/routes/routes.dart';
import 'package:hogr_machinetest/screens/page2.dart';

import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading:false,
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
            Get.toNamed(Routes.page2, id: 1);
          },
          child:  Text('Page2',style: roboto(fontWeight: FontWeight.bold,color: kblack),),
        ),
      ),
    );
  }
}
