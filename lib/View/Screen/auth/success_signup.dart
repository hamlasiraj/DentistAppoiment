import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/colors.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../../Core/Constant/imageAssets.dart';
import '../../../Controller/Auth/succes_signup.dart';
import '../../Widget/Auth/auth_box.dart';
import '../../Widget/Auth/auth_button.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      body: Stack(children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            height: 230,
            width: double.infinity,
            decoration: const BoxDecoration(color: AppColor.primaryColor),
          ),
        ),
        Column(
          children: [
            Image.asset(height: 150, width: 150, AppImageAsset.logo),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: AuthBox(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Success",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    const SizedBox(height: 10),
                    const Icon(Icons.check_circle_outlined,
                        color: Colors.green, size: 150),
                    const Text(
                      "You have successfully create your account. Now Sign in to your account.",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    FunctionButton(
                      height: 40,
                      hint: "Sing In",
                      onPressed: () {
                        controller.goToSignin();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
