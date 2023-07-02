import 'package:dentist_app/Controller/Home/gallerycontroller.dart';
import 'package:dentist_app/Core/Constant/colors.dart';
import 'package:dentist_app/link_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../Core/Class/handlingdataview.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GalleryController());
    return Scaffold(
      body: GetBuilder<GalleryController>(
          builder: (controller) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: GridView.builder(
                  shrinkWrap: true,
                  itemCount: controller.data.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: AppColor.shadow),
                                top: BorderSide(
                                    width: 1, color: AppColor.shadow))),
                        width: 1080,
                        height: 1080,
                        child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl:
                                "${AppLink.glryRoot}${controller.data[index]['gallery_name']}"),
                      ),
                    );
                  },
                ),
              )),
    );
  }
}
