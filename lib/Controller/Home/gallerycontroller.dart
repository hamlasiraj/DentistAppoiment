import 'package:dentist_app/Core/Class/crud.dart';
import 'package:dentist_app/Core/Class/status_request.dart';
import 'package:dentist_app/Core/Function/handling_data.dart';
import 'package:dentist_app/Data/Datasource/Remote/Home/gallerydata.dart';
import 'package:get/get.dart';

class GalleryController extends GetxController {
  GalleryData galleryData = GalleryData(Get.put(Crud()));

  late StatusRequest statusRequest;

  List data = [];

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await galleryData.postData();
    print("================ $response");
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      data.addAll(response["data"]);
      print("---------------------------- $data");
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
