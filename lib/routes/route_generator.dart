
import 'package:flutter/material.dart';
import 'package:hogr_machinetest/routes/routes.dart';
import 'package:hogr_machinetest/screens/home.dart';
import 'package:hogr_machinetest/screens/page1.dart';
import 'package:hogr_machinetest/screens/page2.dart';
import 'package:hogr_machinetest/screens/page3.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (ctx) =>  Home());
      case Routes.page1:
        return MaterialPageRoute(builder: (ctx) =>  Page1());
        case Routes.page2:
        return MaterialPageRoute(builder: (ctx) =>  Page2());
        case Routes.page3:
        return MaterialPageRoute(builder: (ctx) =>  Page3());   
      default:
        return _errorScreen();
    }
  }

  Route _errorScreen() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
        body: const Center(
          child: Text("Error while navigating"),
        ),
      );
    });
  }
}