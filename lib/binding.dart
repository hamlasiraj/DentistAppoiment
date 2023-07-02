import 'package:get/get.dart';
import '../Core/Class/crud.dart';
import '../Data/Datasource/Remote/Auth/signup.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.put(SignupData);
  }
}
