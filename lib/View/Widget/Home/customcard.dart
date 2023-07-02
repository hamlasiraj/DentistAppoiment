import 'package:flutter/material.dart';
import '../../../Core/Constant/colors.dart';

class CustomCard extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final String cardTitle;
  const CustomCard(
      {super.key, this.onTap, required this.icon, required this.cardTitle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColor.primaryColor,
            boxShadow: const [
              BoxShadow(
                  color: AppColor.shadow, blurRadius: 5, spreadRadius: 1.5)
            ]),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(icon, color: AppColor.white),
          Text(
            cardTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          )
        ]),
      ),
    );
  }
}
