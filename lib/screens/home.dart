import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_machinetest/utlis/colors.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';
import 'package:hogr_machinetest/routes/route_generator.dart';
import 'package:hogr_machinetest/routes/routes.dart';
import 'package:hogr_machinetest/screens/tab2.dart';
import 'package:hogr_machinetest/screens/tab3.dart';

class Home extends GetView<HomeController> {
  Home({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();
  final HomeController controller = Get.put(HomeController());

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
            const Tab2(),
            const Tab3(),
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
            controller.currentIndex.value = value;
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
