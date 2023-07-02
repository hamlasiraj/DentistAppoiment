import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controller/on_bording_ctr.dart';
import '../../../Core/Constant/colors.dart';

class FunctionButton extends GetView<OnBordingControllerImp> {
  final void Function()? onPressed;
  final String hint;
  final double height;
  const FunctionButton(
      {super.key, required this.height, this.onPressed, required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
        onPressed: onPressed,
        textColor: Colors.white,
        color: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          hint,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
