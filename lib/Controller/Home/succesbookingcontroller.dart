import 'package:dentist_app/Core/Constant/routes.dart';
import 'package:get/get.dart';
import '../../View/Screen/Home/home.dart';

class SuccesBookingController extends GetxController {
  goToHomePage() {
    Get.offAll(const Home());
  }
}
