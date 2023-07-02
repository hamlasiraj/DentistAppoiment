import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constant/routes.dart';
import '../Services/services.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onBording") == "1") {
      return const RouteSettings(name: AppRoutes.signin);
    }
  }
}
