import 'package:dentist_app/Core/Constant/colors.dart';
import 'package:flutter/material.dart';

class Achievment extends StatelessWidget {
  const Achievment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2,
        crossAxisCount: 1,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: AppColor.shadow, spreadRadius: 1, blurRadius: 5)
              ]),
        ),
      ),
    ));
  }
}
