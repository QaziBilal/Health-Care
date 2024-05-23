import 'package:badges/badges.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/Widgets/CalendarConatiner.dart';
import 'package:provider/constatns/color.dart';
import 'package:provider/constatns/style.dart';
import 'package:provider/screens%20of%20Provider/Login.dart';
import 'package:provider/screens%20of%20Provider/Order.dart';
import 'package:provider/screens%20of%20Provider/appoitmentDetails.dart';
import 'package:provider/screens%20of%20Provider/notification.dart';
import 'package:provider/screens%20of%20Provider/patient_doctorChat.dart';
import 'package:provider/screens%20of%20Provider/profile.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Home",
          style: kTextStyleBlack24,
        ),
        centerTitle: true,
        actions: [
          Badge(
            badgeStyle: const BadgeStyle(
              badgeColor: kbuttonColor,
            ),
            position: BadgePosition.topEnd(top: 12.sp, end: 13.sp),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                },
                icon: SvgPicture.asset("assets/Icons/notification_van.svg")),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                // ignore: sort_child_properties_last
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back)),
                      kVerticalSpace16,
                      Text(
                        "Alison Win",
                        style: kTextStyleBlackBold24,
                      ),
                    ],
                  ),
                ),
              ],
            )),
            ListTile(
              leading: SvgPicture.asset(
                "assets/Icons/home.svg",
              ),
              title: Text(
                "Home",
                style: kTextStyleBlack16,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/Icons/profile.svg",
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                style: kTextStyleBlack16,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/Icons/msg_icon.svg"),
              title: Text(
                "Messages",
                style: kTextStyleBlack16,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PatientDriverChats()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                "assets/Icons/cart.svg",
                color: Colors.black,
              ),
              title: Text(
                "Orders",
                style: kTextStyleBlack16,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrderScreen()));
              },
            ),
            ListTile(
              leading: SvgPicture.asset("assets/Icons/logout.svg"),
              title: Text(
                "Logout",
                style: kTextStyleBlack16,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginProScreen()));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20.sp, left: 20.sp, right: 20.sp),
          child: Column(
            children: [
              Container(
                width: 0.9.sw,
                height: 0.05.sh,
                decoration: BoxDecoration(
                    color: kcontainerColor,
                    borderRadius: BorderRadius.circular(5.r)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Van Driver name is ",
                        style: kTextStyleBlack16,
                      ),
                      Text(
                        "William Son",
                        style: kTextStyleBlackBold16,
                      )
                    ],
                  ),
                ),
              ),
              kVerticalSpace12,
              //Calendar First Container
              Container(
                  width: 0.9.sw,
                  height: 0.5.sh,
                  decoration: BoxDecoration(
                      color: kcontainerColor,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TableCalendar(
                        headerStyle: HeaderStyle(
                            formatButtonVisible: false, titleCentered: true),
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: today,
                      ),
                    ],
                  )),

              kVerticalSpace12,
              //Second Container
              Container(
                padding: EdgeInsets.only(left: 10.sp, right: 10.sp, top: 20.sp),
                width: 0.9.sw,
                height: 0.35.sh,
                decoration: BoxDecoration(
                  color: kcontainerColor,
                ),
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
                height: 0.2.sh,
                padding: EdgeInsets.all(10.sp),
                decoration: BoxDecoration(
                    color: kcontainerColor,
                    borderRadius: BorderRadius.circular(5.r)),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 0.3.sw,
                        height: 0.05.sh,
                        decoration: BoxDecoration(
                            color: kgreenColor,
                            borderRadius: BorderRadius.circular(4.r)),
                        child: Center(
                            child: Text(
                          "Accept",
                          style: kTextStyle16,
                        )),
                      ),
                      Container(
                        width: 0.3.sw,
                        height: 0.05.sh,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(4.r)),
                        child: Center(
                            child: Text(
                          "Decline",
                          style: kTextStyle16,
                        )),
                      ),
                    ]),
              ),
              kVerticalSpace12,
              //3rd Container

              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AppoitmentDetailsScreen()));
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10.sp, right: 10.sp, top: 20.sp),
                      width: 0.9.sw,
                      height: 0.35.sh,
                      decoration: BoxDecoration(
                          color: kcontainerColor,
                          borderRadius: BorderRadius.circular(5.r)),
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
                        height: 0.2.sh,
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
                            Text(
                              "02:30:45 PM",
                              style: kTextStyleGrey16,
                            )
                          ],
                        )),
                  ],
                ),
              ),

              kVerticalSpace12,
              //Fourth Container
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const AppoitmentDetailsScreen()));
                },
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 10.sp, right: 10.sp, top: 20.sp),
                      width: 0.9.sw,
                      height: 0.35.sh,
                      decoration: BoxDecoration(
                          color: kcontainerColor,
                          borderRadius: BorderRadius.circular(5.r)),
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
                        height: 0.2.sh,
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
                  ],
                ),
              ),

              kVerticalSpace12,
            ],
          ),
        ),
      )),
    );
  }
}
