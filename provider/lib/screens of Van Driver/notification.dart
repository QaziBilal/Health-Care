import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/constatns/color.dart';
import 'package:provider/constatns/style.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 0.25.sw,
                    ),
                    Text(
                      "Notification",
                      style: kTextStyleBlackBold24,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              kVerticalSpace28,
              Container(
                width: 0.9.sw,
                height: 0.1.sh,
                padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                decoration: BoxDecoration(
                  color: ktextfeildColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your appointment has been booked",
                      style: kTextStyleBlackBold16,
                    ),
                    kVerticalSpace8,
                    Text(
                      "14 Jun, 2023",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
              ),
              kVerticalSpace16,
              Container(
                width: 0.9.sw,
                height: 0.1.sh,
                padding: EdgeInsets.only(left: 5, right: 5, top: 5),
                decoration: BoxDecoration(
                  color: ktextfeildColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Estimated Arrival Time",
                      style: kTextStyleBlackBold16,
                    ),
                    kVerticalSpace8,
                    Text(
                      "14 Jun, 2023",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
