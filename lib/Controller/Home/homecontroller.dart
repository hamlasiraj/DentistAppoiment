import 'package:dentist_app/Core/Constant/routes.dart';
import 'package:dentist_app/Data/Datasource/Remote/Home/gallerydata.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../View/Screen/Home/Booking/booking.dart';

class HomeController extends GetxController {
  final Uri url = Uri.parse(
      "https://www.google.com/maps/search/?api=1&query=35.40065848975524,%208.11852382389504");

  openMap() async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "condn't open url";
    }
  }

  goToBooking() {
    Get.to(const BookingAppoiment());
  }
}
