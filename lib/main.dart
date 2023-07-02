import 'package:dentist_app/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Core/Localization/changelocal.dart';
import '../Core/Localization/translation.dart';
import '../Core/Services/services.dart';
import '../binding.dart';
import 'View/Screen/Home/home.dart';
import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleConroller controller = Get.put(LocaleConroller());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,
      home: Home(),
      // initialBinding: MyBinding(),
      // getPages: routes,
    );
  }
}
