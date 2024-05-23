import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/constatns/color.dart';
import 'package:provider/constatns/style.dart';
import 'package:provider/screens%20of%20Provider/submitReports.dart';

class AppoitmentDetailsScreen extends StatelessWidget {
  const AppoitmentDetailsScreen({super.key});

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
                      "Order Detail",
                      style: kTextStyleBlackBold24,
                    ),
                  ],
                ),
              ),
              kVerticalSpace16,
              Container(
                padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 20.sp),
                width: 0.9.sw,
                height: 0.35.sh,
                decoration: BoxDecoration(
                    color: kcontainerColor,
                    borderRadius: BorderRadius.circular(5.r)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Patient Name:",
                            style: kTextStyleBlackBold16,
                          ),
                          Text("Max Lim", style: kTextStyleGrey16)
                        ],
                      ),
                      kVerticalSpace12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Patient ID:",
                            style: kTextStyleBlackBold16,
                          ),
                          Text("BRVCIVI23534", style: kTextStyleGrey16)
                        ],
                      ),
                      kVerticalSpace12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Time:",
                            style: kTextStyleBlackBold16,
                          ),
                          Text("60 Minutes", style: kTextStyleGrey16)
                        ],
                      ),
                      kVerticalSpace12,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Status:",
                            style: kTextStyleBlackBold16,
                          ),
                          Text("Active", style: kTextStyleGreen16)
                        ],
                      ),
                      kVerticalSpace12,
                    ]),
              ),
              SizedBox(width: 0.9.sw, child: const DottedLine()),
              Container(
                  width: 0.9.sw,
                  height: 0.15.sh,
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                      color: kcontainerColor,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Join Call",
                        style: kTextStyleBlackBold24,
                      ),
                      Text(
                        "https://www.youtube.com/watch?v=AV92ZC5EBls",
                        textAlign: TextAlign.center,
                        style: kTextStyleGrey16,
                      )
                    ],
                  )),
              kVerticalSpace16,
              Container(
                width: 0.9.sw,
                height: 0.06.sh,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                child: Center(
                    child: Text(
                  "Request Patient Data",
                  style: kTextStyleBlack20,
                )),
              ),
              kVerticalSpace16,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubmitReportsScreen()));
                },
                child: Container(
                  width: 0.9.sw,
                  height: 0.06.sh,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Colors.black),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                    "Submit Reports",
                    style: kTextStyleBlack20,
                  )),
                ),
              ),
              kVerticalSpace16,
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SubmitReportsScreen()));
                },
                child: Container(
                  width: 0.9.sw,
                  height: 0.06.sh,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: kbuttonColor),
                  child: Center(
                      child: Text(
                    "Submit Order",
                    style: kTextStyle20,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
