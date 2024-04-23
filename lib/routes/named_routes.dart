import 'package:get/get.dart';
import 'package:hogr_machinetest/controllers/home_controller.dart';
import 'package:hogr_machinetest/routes/routes.dart';
import 'package:hogr_machinetest/screens/home.dart';
import 'package:hogr_machinetest/screens/page1.dart';
import 'package:hogr_machinetest/screens/page2.dart';
import 'package:hogr_machinetest/screens/page3.dart';

class MainRoutes {
  static final List<GetPage> getPageList = [
    GetPage(
        name: Routes.homeScreen,
        page: () => Home(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => HomeController());
        })),
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
        binding: BindingsBuilder(() {
          Get.lazyPut(() => HomeController());
        })),
  ];
}
