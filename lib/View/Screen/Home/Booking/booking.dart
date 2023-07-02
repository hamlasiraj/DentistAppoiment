import 'package:dentist_app/Core/Constant/colors.dart';
import 'package:dentist_app/View/Widget/Auth/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../../Controller/Home/bookingcontroller.dart';

class BookingAppoiment extends StatelessWidget {
  const BookingAppoiment({super.key});

  @override
  Widget build(BuildContext context) {
    BookingApoimentController controller = Get.put(BookingApoimentController());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          title: Text("Book Appoiment",
              style: Theme.of(context).textTheme.headlineMedium),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GetBuilder<BookingApoimentController>(
            builder: (controller) => ListView(
              children: [
                Text(
                  "Select Time To Visit Me:",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Divider(),
                TableCalendar(
                  focusedDay: controller.focusedDay,
                  firstDay: DateTime.now(),
                  lastDay: DateTime.now().add(const Duration(days: 7)),
                  calendarFormat: controller.format,
                  currentDay: controller.currentDay,
                  rowHeight: 48,
                  startingDayOfWeek: StartingDayOfWeek.saturday,
                  calendarStyle: const CalendarStyle(
                      todayDecoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          shape: BoxShape.circle)),
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month'
                  },
                  onFormatChanged: (format) {},
                  onDaySelected: (selectedDay, focusedDay) {
                    controller.onDaySelected(selectedDay, focusedDay);
                  },
                ),
                Text(
                  "Available Slots:",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Divider(),
                const SizedBox(height: 10),
                controller.isWeekend
                    ? Text(
                        "Weekend is not Available, Please Choose Another Day.",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    : GridView.builder(
                        itemCount: controller.timeSlots.length,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 2,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 3),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            controller.changeSlotColor(index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: controller.currentIndex == index
                                    ? AppColor.primaryColor
                                    : Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: AppColor.shadow,
                                      spreadRadius: 0,
                                      blurRadius: 2)
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text("${controller.timeSlots[index]}")),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(10),
            child: FunctionButton(
                height: 50,
                hint: "Book",
                onPressed: () {
                  if (controller.isTimeSelected && controller.isDateSelected) {
                    controller.goToSuccesBook();
                  } else {
                    controller.alert(context);
                  }
                })));
  }
}
