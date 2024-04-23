import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/constants.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';
import 'package:hogr_machinetest/controllers/page3_controller.dart';

class Page3 extends StatelessWidget {
  final Page3Controller controller = Get.put(Page3Controller());

  Page3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PAGE 3',
          style: roboto(color: kwhite),
        ),
        leading: IconButton(
          icon: Icon(
            Get.find<HomeController>().currentIndex.value == 1
                ? Icons.close
                : Icons.arrow_back,
            color: kwhite,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: kblack,
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2, 
              margin: const EdgeInsets.symmetric(
                  vertical: 8, horizontal: 16), 
              child: ListTile(
                tileColor:const Color.fromARGB(255, 128, 196, 228),
                title: Text(controller.items[index]),
              ),
            );
          },
        );
      }),
    );
  }
}
