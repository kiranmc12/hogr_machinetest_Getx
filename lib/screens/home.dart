import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_machinetest/screens/page1.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';
import 'package:hogr_machinetest/routes/route_generator.dart';
import 'package:hogr_machinetest/routes/routes.dart';

class Home extends GetView<HomeController> {
  Home({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: controller.currentIndex.value,
          children: [
            Navigator(
              key: Get.nestedKey(1),
              initialRoute: Routes.page1,
              onGenerateRoute: routeGenerator.onGenerateRoute,
            ),
            Page1(),
            Page1(),
          ],
        );
      }),
      bottomNavigationBar: Container(
        color: kgrey,
        child: TabBar(
          controller: controller.tabController,
          labelColor: kwhite,
          unselectedLabelColor: kwhite,
          indicator: const BoxDecoration(color: kblack),
          indicatorSize: TabBarIndicatorSize.tab,
          onTap: (value) {
            //checks if the same tab is  tapped again
            if (controller.currentIndex.value == value) {
              if (controller.currentIndex.value == 0) {
                Get.offNamedUntil(Routes.page1, (route) => false, id: 1);
              }
            } else {
              controller.currentIndex.value = value;
            }
          },
          tabs: const [
            Tab(
              text: 'TAB 1',
            ),
            Tab(
              text: 'TAB 2',
            ),
            Tab(
              text: 'TAB 3',
            ),
          ],
        ),
      ),
    );
  }
}
