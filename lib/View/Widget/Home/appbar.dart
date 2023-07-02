import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../Core/Constant/colors.dart';

class UserAppBar extends StatelessWidget {
  const UserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: AppColor.primaryColor, boxShadow: [
        BoxShadow(color: AppColor.shadow, blurRadius: 10, spreadRadius: 3)
      ]),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        "https://wallpapers.com/images/high/blank-default-pfp-wue0zko1dfxs9z2c.webp"),
              )),
          const SizedBox(width: 10),
          Text("Aissoug Ziad",
              style: Theme.of(context).textTheme.headlineMedium),
        ],
      ),
    );
  }
}
