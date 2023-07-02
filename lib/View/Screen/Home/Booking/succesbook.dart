import 'package:dentist_app/Controller/Home/succesbookingcontroller.dart';
import 'package:dentist_app/Core/Constant/colors.dart';
import 'package:dentist_app/Core/Constant/imageAssets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../Widget/Auth/auth_button.dart';

class SuccesBooking extends StatelessWidget {
  const SuccesBooking({super.key});

  @override
  Widget build(BuildContext context) {
    SuccesBookingController controller = Get.put(SuccesBookingController());
    return Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                height: 250,
                width: 250,
                child: Lottie.asset(AppImageAsset.done)),
            const Text("Succesfuly...!",
                style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 25,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold)),
            Text("Your Appointment Has Been Scheduled",
                style: Theme.of(context).textTheme.bodyLarge),
          ]),
        ),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(10),
            child: FunctionButton(
                height: 50,
                hint: "Home",
                onPressed: () {
                  controller.goToHomePage();
                })));
  }
}
