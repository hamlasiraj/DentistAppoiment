import 'package:dentist_app/Core/Constant/colors.dart';
import 'package:dentist_app/Core/Constant/routes.dart';
import 'package:dentist_app/View/Screen/Home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../View/Screen/Home/Booking/succesbook.dart';

class BookingApoimentController extends GetxController {
  final List timeSlots = [
    '8:00 - 9:00',
    '9:00 - 10:00',
    '10:00 - 11:00',
    '11:00 - 12:00',
    '13:00 - 14:00',
    '14:00 - 15:00',
    '15:00 - 16:00'
  ];

///////////////////////////////////////////////////

  CalendarFormat format = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();
  DateTime currentDay = DateTime.now();
  int? currentIndex;
  bool isWeekend = false;
  bool isTimeSelected = false;
  bool isDateSelected = false;

  bool isSlotSelected = false;

  onDaySelected(selectedDay, focusedDay) {
    currentDay = selectedDay;
    focusedDay = focusedDay;
    isDateSelected = true;

    if (selectedDay.weekday == 5 || selectedDay.weekday == 6) {
      isWeekend = true;

      isTimeSelected = false;
      currentIndex = null;
    } else {
      isWeekend = false;
    }
    update();
  }

  changeSlotColor(int index) {
    currentIndex = index;
    isTimeSelected = true;
    update();
  }

  goToSuccesBook() {
    Get.offAll(const SuccesBooking());
  }

  alert(context) {
    Get.defaultDialog(
        buttonColor: AppColor.primaryColor,
        textConfirm: "Got it",
        confirmTextColor: AppColor.white,
        onConfirm: () {
          Get.back();
        },
        backgroundColor: AppColor.white,
        title: "Alert!",
        middleText: "Please Choose Specific Time.",
        titleStyle: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: AppColor.grey),
        middleTextStyle: const TextStyle(
            fontWeight: FontWeight.w500, fontSize: 15, color: AppColor.grey));
  }
}
