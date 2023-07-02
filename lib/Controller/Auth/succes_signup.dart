import 'package:get/get.dart';
import '../../Core/Constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  goToSignin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToSignin() {
    Get.offNamed(AppRoutes.signin);
  }
}
