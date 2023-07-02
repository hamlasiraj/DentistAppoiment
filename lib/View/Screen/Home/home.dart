import 'package:dentist_app/View/Screen/Home/AboutMe/aboutme.dart';
import 'package:dentist_app/View/Widget/Auth/auth_button.dart';
import 'package:dentist_app/View/Widget/Home/customcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controller/Home/homecontroller.dart';
import '../../Widget/Home/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      body: ListView(children: [
        const UserAppBar(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              children: [
                CustomCard(
                    onTap: () {
                      controller.openMap();
                    },
                    icon: Icons.place_rounded,
                    cardTitle: "Location"),
                CustomCard(
                    icon: Icons.card_membership_rounded,
                    cardTitle: "About Me",
                    onTap: () {
                      Get.to(const AboutMe());
                    }),
                CustomCard(
                    onTap: () {}, icon: Icons.image, cardTitle: "My Appoiment"),
                const CustomCard(
                    icon: Icons.price_change_rounded, cardTitle: "Prices"),
              ]),
        ),
      ]),
      bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          child: FunctionButton(
            height: 60,
            hint: "Book Appoiment",
            onPressed: () {
              controller.goToBooking();
            },
          )),
    );
  }
}
