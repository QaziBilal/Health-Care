import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/constatns/style.dart';
import 'package:provider/screens%20of%20Patient/Chats.dart';

import '../Widgets/popupCard.dart';
import '../constatns/color.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 0.1.sh),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 0.3.sw,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0.009.sh),
                    child: Text(
                      "Orders",
                      style: kTextStyleBlackBold24,
                    ),
                  )
                ],
              ),
              kVerticalSpace16,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      width: 0.3.sw,
                      height: 0.05.sh,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 0
                              ? kbuttonColor
                              : ktextfeildColor),
                      child: Center(
                          child: Text(
                        "Recent",
                        style:
                            currentIndex == 0 ? kTextStyle16 : kTextStyleGrey16,
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Container(
                      width: 0.3.sw,
                      height: 0.05.sh,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 1
                              ? kbuttonColor
                              : ktextfeildColor),
                      child: Center(
                          child: Text(
                        "Appoitnment Schedule",
                        textAlign: TextAlign.center,
                        style:
                            currentIndex == 1 ? kTextStyle16 : kTextStyleGrey16,
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Container(
                      width: 0.3.sw,
                      height: 0.05.sh,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 2
                              ? kbuttonColor
                              : ktextfeildColor),
                      child: Center(
                          child: Text(
                        "Completed Appointment",
                        textAlign: TextAlign.center,
                        style:
                            currentIndex == 2 ? kTextStyle16 : kTextStyleGrey16,
                      )),
                    ),
                  ),
                ],
              ),
              kVerticalSpace12,
              if (currentIndex == 0) ...[
                recentOrderDetail(),
                recentOrderDetail(),
                recentOrderDetail(),
                recentOrderDetail(),
              ] else if (currentIndex == 1) ...[
                appointmentSchedule(),
                appointmentSchedule(),
                appointmentSchedule(),
                appointmentSchedule(),
              ] else ...[
                completedAppointments(),
                completedAppointments(),
                completedAppointments(),
                completedAppointments(),
              ]
            ],
          ),
        ),
      ),
    );
  }

  Widget recentOrderDetail() {
    return Container(
      decoration: BoxDecoration(
          color: kcontainerColor, borderRadius: BorderRadius.circular(10.r)),
      height: 0.5.sh,
      width: 0.9.sw,
      padding:
          EdgeInsets.only(top: 10.sp, bottom: 10.sp, left: 5.sp, right: 5.sp),
      margin: EdgeInsets.only(bottom: 20.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date:",
                style: kTextStyleBlack16,
              ),
              Text(
                "25 Oct 2020",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Time:",
                style: kTextStyleBlack16,
              ),
              Text(
                "9:06 PM",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Duration:",
                style: kTextStyleBlack16,
              ),
              Text(
                "40 Minutes",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status:",
                style: kTextStyleBlack16,
              ),
              Text(
                "Active",
                style: kTextStyleBlue16,
              )
            ],
          ),
          kVerticalSpace8,
          SizedBox(width: 0.9.sw, child: const DottedLine()),
          kVerticalSpace8,
          Container(
            width: 0.9.sw,
            height: 0.15.sh,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/Images/Map.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          kVerticalSpace8,
          SizedBox(width: 0.9.sw, child: const DottedLine()),
          Container(
              width: 0.9.sw,
              height: 0.1.sh,
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                  color: kcontainerColor,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Estimated Time To Join",
                    style: kTextStyleBlackBold24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "02:30:45 PM",
                        style: kTextStyleGrey16,
                      ),
                      CircleAvatar(
                        radius: 17.r,
                        backgroundColor: const Color(0xffB9CCFA),
                        child: SvgPicture.asset(
                          "assets/Icons/message_icon.svg",
                          color: kbuttonColor,
                          width: 17.sp,
                          height: 17.sp,
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget appointmentSchedule() {
    return Container(
      decoration: BoxDecoration(
          color: kcontainerColor, borderRadius: BorderRadius.circular(10.r)),
      height: 0.4.sh,
      width: 0.9.sw,
      padding:
          EdgeInsets.only(top: 10.sp, bottom: 10.sp, right: 5.sp, left: 5.sp),
      margin: EdgeInsets.only(bottom: 10.sp),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date:",
                style: kTextStyleBlack16,
              ),
              Text(
                "25 Oct 2020",
                style: kTextStyleID16,
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Time:",
                style: kTextStyleBlack16,
              ),
              Text(
                "9:06 PM",
                style: kTextStyleID16,
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Duration:",
                style: kTextStyleBlack16,
              ),
              Text(
                "40 Minutes",
                style: kTextStyleID16,
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status:",
                style: kTextStyleBlack16,
              ),
              Text(
                "Active",
                style: kTextStyleBlue16,
              )
            ],
          ),
          kVerticalSpace4,
          SizedBox(width: 0.9.sw, child: const DottedLine()),
          kVerticalSpace12,
          Container(
              width: 0.9.sw,
              height: 0.1.sh,
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                  color: kcontainerColor,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Estimated Time To Join",
                    style: kTextStyleBlackBold24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "02:30:45 PM",
                        style: kTextStyleGrey16,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chats()));
                        },
                        child: CircleAvatar(
                          radius: 15.r,
                          backgroundColor: const Color(0xffB9CCFA),
                          child: SvgPicture.asset(
                            "assets/Icons/message_icon.svg",
                            color: kbuttonColor,
                            width: 15.sp,
                            height: 15.sp,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget completedAppointments() {
    return Container(
      decoration: BoxDecoration(
          color: kcontainerColor, borderRadius: BorderRadius.circular(10.r)),
      height: 0.3.sh,
      width: 0.9.sw,
      padding: EdgeInsets.all(15.sp),
      margin: EdgeInsets.only(bottom: 15.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Appointment Details",
            style: kTextStyleBlackBold16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date:",
                style: kTextStyleBlack16,
              ),
              Text(
                "25 Oct 2020",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Time:",
                style: kTextStyleBlack16,
              ),
              Text(
                "9:06 PM",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Duration:",
                style: kTextStyleBlack16,
              ),
              Text(
                "40 Minutes",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status:",
                style: kTextStyleBlack16,
              ),
              Text(
                "Active",
                style: kTextStyleBlue16,
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 0.4.sw,
                height: 0.05.sh,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.black)),
                child: Center(
                    child: Text(
                  "View Results",
                  style: kTextStyleBlack16,
                )),
              ),
              Container(
                width: 0.4.sw,
                height: 0.05.sh,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Colors.black)),
                child: Center(
                    child: Text(
                  "View Instructions",
                  style: kTextStyleBlack16,
                )),
              ),
            ],
          ),
          kVerticalSpace8,
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupCard(content: popupDetail());
                },
              );
            },
            child: Container(
                width: 0.9.sw,
                height: 0.05.sh,
                padding: EdgeInsets.all(10.sp),
                decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(5.r)),
                child: Center(
                  child: Text(
                    "View Prescriptions",
                    style: kTextStyle16,
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget popupDetail() {
    return SizedBox(
      width: 0.9.sw,
      height: 0.35.sh,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 15.r,
                backgroundColor: ktextfeildColor,
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          kVerticalSpace12,
          Text(
            "Your Prescriptions and OTC \n Medicine Details",
            style: kTextStyleBlackBold16,
            textAlign: TextAlign.center,
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Medicine",
                style: kTextStyleBlackBold16,
              ),
              Text(
                "Quantity",
                style: kTextStyleBlackBold16,
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Basic Care Allergy Relief \n Diphenhydramine HCl 25 mg",
                style: kTextStyleBlack16,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 3.sp, left: 10.sp, right: 10.sp, bottom: 3.sp),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Center(
                  child: Text(
                    "1",
                    style: kTextStyleBlack16,
                  ),
                ),
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Basic Care Allergy Relief \n Diphenhydramine HCl 25 mg",
                style: kTextStyleBlack16,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 3.sp, left: 10.sp, right: 10.sp, bottom: 3.sp),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Center(
                  child: Text(
                    "1",
                    style: kTextStyleBlack16,
                  ),
                ),
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Basic Care Allergy Relief \n Diphenhydramine HCl 25 mg",
                style: kTextStyleBlack16,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: 3.sp, left: 10.sp, right: 10.sp, bottom: 3.sp),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5.r)),
                child: Center(
                  child: Text(
                    "1",
                    style: kTextStyleBlack16,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
