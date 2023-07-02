import 'package:cached_network_image/cached_network_image.dart';
import 'package:dentist_app/Core/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/Home/aboutmecontroller.dart';
import 'gallery.dart';
import 'achievment.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AboutMeController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 85,
                        width: 85,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl:
                                  "https://wallpapers.com/images/high/blank-default-pfp-wue0zko1dfxs9z2c.webp"),
                        )),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 10),
                        Text("Aissoug Ziad",
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(height: 2),
                        Text("General Dentist",
                            style: TextStyle(
                                color: AppColor.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                      ],
                    ),
                  ]),
            ),
            toolbarHeight: 100,
            backgroundColor: AppColor.primaryColor,
            bottom: const TabBar(
                indicatorWeight: 3,
                indicatorColor: Color.fromARGB(255, 86, 5, 100),
                tabs: [
                  Tab(text: "Achievement"),
                  Tab(
                    text: "Gallery",
                  )
                ]),
          ),
          body: const TabBarView(children: [Achievment(), Gallery()])),
    );
  }
}
