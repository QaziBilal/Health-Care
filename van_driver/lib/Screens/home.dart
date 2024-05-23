import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:van_driver/Constants/color.dart';
import 'package:van_driver/Constants/style.dart';
import 'package:van_driver/Screens/Profile.dart';
import 'package:van_driver/Screens/driverChats.dart';
import 'package:van_driver/Screens/notification.dart';
import 'package:van_driver/Screens/orderDetail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                      child: Text(
                    "Home",
                    style: kTextStyleBlackBold24,
                  )),
                  Padding(
                    padding: EdgeInsets.only(left: 0.2.sw, right: 0.01.sw),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileScreen()));
                            },
                            child: const Icon(Icons.account_circle_outlined)),
                        kHorizontalSpace8,
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DriverChats()));
                            },
                            child:
                                SvgPicture.asset("assets/Icons/msg_icon.svg")),
                        kHorizontalSpace8,
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationScreen()));
                            },
                            child: Badge(
                                badgeStyle: BadgeStyle(
                                  badgeColor: kbuttonColor,
                                ),
                                position:
                                    BadgePosition.topEnd(top: 2.sp, end: 2.sp),
                                child: SvgPicture.asset(
                                    "assets/Icons/notification_van.svg"))),
                        kHorizontalSpace8,
                      ],
                    ),
                  )
                ],
              ),
              kVerticalSpace16,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ktextfeildColor),
                width: 0.9.sw,
                height: 0.05.sh,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: Container(
                        width: 0.45.sw,
                        height: 0.05.sh,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == 0
                                ? kbuttonColor
                                : Colors.transparent),
                        child: Center(
                            child: Text(
                          "Recent",
                          style: currentIndex == 0
                              ? kTextStyle16
                              : kTextStyleGrey16,
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
                        width: 0.45.sw,
                        height: 0.05.sh,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == 1
                                ? kbuttonColor
                                : Colors.transparent),
                        child: Center(
                            child: Text(
                          "History",
                          style: currentIndex == 1
                              ? kTextStyle16
                              : kTextStyleGrey16,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              kVerticalSpace12,
              if (currentIndex == 0) ...[
                recentOrderDetail(),
                recentOrderDetail(),
                recentOrderDetail(),
                recentOrderDetail(),
              ] else ...[
                historyOrderDetail(),
                historyOrderDetail(),
                historyOrderDetail(),
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
      height: 0.3.sh,
      width: 0.9.sw,
      padding: EdgeInsets.all(15.sp),
      margin: EdgeInsets.only(bottom: 15.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order ID:",
                style: kTextStyleBlack16,
              ),
              Text(
                "fj83jh23rh",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Patient Name:",
                style: kTextStyleBlack16,
              ),
              Text(
                "Name",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Patient ID:",
                style: kTextStyleBlack16,
              ),
              Text(
                "1280",
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OrderDetailScreen()));
            },
            child: Container(
              width: 0.7.sw,
              height: 0.06.sh,
              decoration: BoxDecoration(
                  color: kbuttonColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "View Order Details",
                  style: kTextStyle16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget historyOrderDetail() {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order ID:",
                style: kTextStyleBlack16,
              ),
              Text(
                "293iuh239",
                style: kTextStyleID16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Patient Name:",
                style: kTextStyleBlack16,
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
                "Patient ID:",
                style: kTextStyleBlack16,
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
                "Status:",
                style: kTextStyleBlack16,
              ),
              Text(
                "Done",
                style: kTextStyleBlue16,
              )
            ],
          ),
          kVerticalSpace8,
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OrderDetailScreen()));
            },
            child: Container(
              width: 0.7.sw,
              height: 0.06.sh,
              decoration: BoxDecoration(
                  color: kbuttonColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "View Order Details",
                  style: kTextStyle16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
