import 'package:get/get.dart';

class AboutMeController extends GetxController {
  List tabs = ["Achievment", "Gallery"];
  int currentIndex = 0;

  selectIndex(int index) {
    currentIndex = index;
    update();
  }
}
