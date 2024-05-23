import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:van_driver/Constants/color.dart';
import 'package:van_driver/Constants/style.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

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
                        icon: Icon(Icons.arrow_back)),
                    SizedBox(
                      width: 0.25.sw,
                    ),
                    Text(
                      "Order Detail",
                      style: kTextStyleBlackBold24,
                    ),
                  ],
                ),
              ),
              kVerticalSpace24,
              SizedBox(
                width: 0.9.sw,
                height: 0.3.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Patient Name:",
                          style: kTextStyleBlackBold16,
                        ),
                        Text(
                          "Patient Name",
                          style: kTextStyleID16,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order ID:",
                          style: kTextStyleBlackBold16,
                        ),
                        Text(
                          "23864938",
                          style: kTextStyleID16,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Patient ID:",
                          style: kTextStyleBlackBold16,
                        ),
                        Text(
                          "23864938",
                          style: kTextStyleID16,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mobile No:",
                          style: kTextStyleBlackBold16,
                        ),
                        Text(
                          "0348909989",
                          style: kTextStyleID16,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Location:",
                          style: kTextStyleBlackBold16,
                        ),
                        Text(
                          "Sydney, AUS",
                          style: kTextStyleID16,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Status:",
                          style: kTextStyleBlackBold16,
                        ),
                        Text(
                          "Active",
                          style: kTextStyleBlue16,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Special Instructions:",
                          style: kTextStyleBlackBold16,
                        ),
                        Text("")
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.sp),
                width: 0.9.sw,
                height: 0.1.sh,
                decoration: BoxDecoration(
                  color: ktextfeildColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut"
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut",
                  style: TextStyle(fontSize: 14, color: Color(0xff707070)),
                ),
              ),
              kVerticalSpace12,
              Container(
                width: 0.9.sw,
                height: 0.06.sh,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                child: Center(
                    child: Text(
                  "Chat With Patient",
                  style: kTextStyleBlack16,
                )),
              ),
              kVerticalSpace12,
              Container(
                width: 0.9.sw,
                height: 0.06.sh,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kbuttonColor),
                child: Center(
                    child: Text(
                  "Chat with Dispatcher",
                  style: kTextStyle16,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
