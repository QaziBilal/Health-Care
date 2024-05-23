import 'dart:async';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/Widgets/checkBox.dart';
import 'package:provider/Widgets/popupCard.dart';
import 'package:provider/constatns/style.dart';
import 'package:provider/screens%20of%20Patient/Card.dart';
import 'package:provider/screens%20of%20Patient/Chats.dart';
import 'package:provider/screens%20of%20Patient/History.dart';
import 'package:provider/screens%20of%20Patient/MedicalRecords.dart';
import 'package:provider/screens%20of%20Patient/Notifications.dart';
import 'package:provider/screens%20of%20Patient/profile.dart';
import 'package:provider/screens%20of%20Van%20Driver/login.dart';
import 'package:table_calendar/table_calendar.dart';

import '../constatns/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _controller = Completer<GoogleMapController>();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

  DateTime today = DateTime.now();
  bool visibleContainer = false;
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
                  "assets/Icons/Medical_Records.svg",
                  color: Colors.black,
                ),
                title: Text(
                  "Medical Recrods",
                  style: kTextStyleBlack16,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MedicalRecordsScreen()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/Icons/history.svg",
                  color: Colors.black,
                ),
                title: Text(
                  "History",
                  style: kTextStyleBlack16,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HistoryScreen()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Chats()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset(
                  "assets/Icons/cardIcon.svg",
                  color: Colors.black,
                ),
                title: Text(
                  "Payment Details",
                  style: kTextStyleBlack16,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AddCard()));
                },
              ),
              ListTile(
                leading: SvgPicture.asset("assets/Icons/logout.svg"),
                title: Text(
                  "Signout",
                  style: kTextStyleBlack16,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Images/main Map.png"),
                        fit: BoxFit.fill)),
                // child: GoogleMap(
                //   mapType: MapType.hybrid,
                //   initialCameraPosition: _kGooglePlex,
                //   onMapCreated: (GoogleMapController controller) {
                //     _controller.complete(controller);
                //   },
                // ),
              ),
              Positioned(
                top: 0.25.sh,
                left: 0.25.sw,
                child: Container(
                  width: 0.4.sw,
                  height: 0.2.sh,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Images/ambu.png"),
                          fit: BoxFit.fill)),
                ),
              ),
              Positioned(
                  top: 0.03.sh,
                  left: 0.1.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return PopupCard(
                                  scrollable1: true,
                                  content: bookNow(context),
                                );
                              });
                        },
                        child: Container(
                          width: 0.4.sw,
                          height: 0.06.sh,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: kbuttonColor),
                          child: Center(
                              child: Text(
                            "Book Now",
                            style: kTextStyle16,
                          )),
                        ),
                      ),
                      kHorizontalSpace16,
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return PopupCard(
                                  scrollable1: true,
                                  content: scheduleAppointment(context),
                                );
                              });
                        },
                        child: Container(
                          width: 0.4.sw,
                          height: 0.06.sh,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: Colors.black),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            "Schedule Later",
                            style: kTextStyleBlack16,
                          )),
                        ),
                      ),
                    ],
                  )),
              Positioned(
                  left: 0.25.sw,
                  top: 0.75.sh,
                  child: Text(
                    "Booking and Tracking Your \neleMED Medi-Van",
                    style: kTextStyleBlackBold16,
                    textAlign: TextAlign.center,
                  ))
            ],
          ),
        ));
  }

  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }

  Widget bookNow(context) {
    return SizedBox(
      width: 0.9.sw,
      height: 1.sh,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            kVerticalSpace8,
            Align(
              alignment: Alignment.center,
              child: Text(
                "Book Appointment",
                style: kTextStyleBlackBold24,
                textAlign: TextAlign.center,
              ),
            ),
            kVerticalSpace8,
            Text(
              "Date : ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace8,
            TextFormField(
              style: kTextStyleBlack20,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: SvgPicture.asset(
                    "assets/Icons/calendar.svg",
                    width: 15.sp,
                    height: 15.sp,
                    fit: BoxFit.scaleDown,
                  ),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  filled: true,
                  fillColor: ktextfeildColor),
            ),
            kVerticalSpace16,
            Text(
              "Choose Time: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 0.2.sw,
                    height: 0.05.sh,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: kbuttonColor),
                    child: Center(
                      child: Text(
                        "07:00 PM",
                        style: kTextStyle16,
                      ),
                    )),
                Container(
                    width: 0.2.sw,
                    height: 0.05.sh,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: ktextfeildColor,
                        border: Border.all(color: kbuttonColor)),
                    child: Center(
                      child: Text(
                        "07:00 PM",
                        style: kTextStyleBlack16,
                      ),
                    )),
                Container(
                    width: 0.2.sw,
                    height: 0.05.sh,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: ktextfeildColor,
                        border: Border.all(color: kbuttonColor)),
                    child: Center(
                      child: Text(
                        "07:00 PM",
                        style: kTextStyleBlack16,
                      ),
                    ))
              ],
            ),
            kVerticalSpace20,
            Text(
              "Call Reasons: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            CustomCheckBoxList(),
            kVerticalSpace12,
            TextFormField(
              decoration: InputDecoration(
                hintText: "Please add reason for Visit",
              ),
            ),
            kVerticalSpace12,
            Text(
              "Comments: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            Container(
              width: 0.8.sw,
              height: 0.2.sh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: ktextfeildColor),
            ),
            kVerticalSpace12,
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return PopupCard(
                        scrollable1: true,
                        content: bookedAppointment(context),
                      );
                    });
              },
              child: Container(
                width: 0.9.sw,
                height: 0.07.sh,
                decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Review Appointment",
                    style: kTextStyle16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bookedAppointment(context) {
    return SizedBox(
      width: 0.9.sw,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            kVerticalSpace8,
            Align(
              alignment: Alignment.center,
              child: Text(
                "Book Your eleMED \n Appoinment",
                style: kTextStyleBlackBold24,
                textAlign: TextAlign.center,
              ),
            ),
            kVerticalSpace8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date : ",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "10 Jun, 2023",
                  style: kTextStyleBlack16,
                ),
              ],
            ),
            kVerticalSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Choosed Time : ",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "07:00 PM",
                  style: kTextStyleBlack16,
                ),
              ],
            ),
            kVerticalSpace20,
            Text(
              "Call Reasons: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Chest Pain",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Vaccines",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Flu",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Covid Testing",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
              ],
            ),
            kVerticalSpace12,
            Text(
              "Comments: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            Container(
              width: 0.8.sw,
              height: 0.2.sh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: ktextfeildColor),
            ),
            kVerticalSpace12,
            GestureDetector(
              onTap: () {
                // Navigator.pushReplacement(context,
                //     MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              child: Container(
                width: 0.9.sw,
                height: 0.07.sh,
                decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Book Appointment",
                    style: kTextStyle16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget scheduleAppointment(context) {
    return SizedBox(
      width: 0.9.sw,
      height: 1.sh,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            kVerticalSpace8,
            Align(
              alignment: Alignment.center,
              child: Text(
                "Schedule Appointment",
                style: kTextStyleBlackBold24,
                textAlign: TextAlign.center,
              ),
            ),
            kVerticalSpace8,
            Text(
              "Date : ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace8,
            GestureDetector(
              onTap: () {
                setState(() {
                  visibleContainer = true;
                });
              },
              child: Container(
                width: 0.8.sw,
                height: 0.05,
                decoration: BoxDecoration(
                  color: ktextfeildColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "assets/Icons/calendar.svg",
                      width: 15.sp,
                      height: 15.sp,
                      fit: BoxFit.scaleDown,
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ),
            Visibility(
              visible: visibleContainer,
              child: TableCalendar(
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: today,
              ),
            ),
            TextFormField(
              style: kTextStyleBlack20,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: SvgPicture.asset(
                    "assets/Icons/calendar.svg",
                    width: 15.sp,
                    height: 15.sp,
                    fit: BoxFit.scaleDown,
                  ),
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  filled: true,
                  fillColor: ktextfeildColor),
            ),
            kVerticalSpace16,
            Text(
              "Choose Time: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 0.2.sw,
                    height: 0.05.sh,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: kbuttonColor),
                    child: Center(
                      child: Text(
                        "07:00 PM",
                        style: kTextStyle16,
                      ),
                    )),
                Container(
                    width: 0.2.sw,
                    height: 0.05.sh,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: ktextfeildColor,
                        border: Border.all(color: kbuttonColor)),
                    child: Center(
                      child: Text(
                        "07:00 PM",
                        style: kTextStyleBlack16,
                      ),
                    )),
                Container(
                    width: 0.2.sw,
                    height: 0.05.sh,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: ktextfeildColor,
                        border: Border.all(color: kbuttonColor)),
                    child: Center(
                      child: Text(
                        "07:00 PM",
                        style: kTextStyleBlack16,
                      ),
                    ))
              ],
            ),
            kVerticalSpace20,
            Text(
              "Call Reasons: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            CustomCheckBoxList(),
            kVerticalSpace12,
            TextFormField(
              decoration: InputDecoration(
                hintText: "Please add reason for Visit",
              ),
            ),
            kVerticalSpace12,
            Text(
              "Comments: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            Container(
              width: 0.8.sw,
              height: 0.2.sh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: ktextfeildColor),
            ),
            kVerticalSpace12,
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return PopupCard(
                        scrollable1: true,
                        content: scheduleAppointment1(context),
                      );
                    });
              },
              child: Container(
                width: 0.9.sw,
                height: 0.07.sh,
                decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Review Appointment",
                    style: kTextStyle16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget scheduleAppointment1(context) {
    return SizedBox(
      width: 0.9.sw,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            kVerticalSpace8,
            Align(
              alignment: Alignment.center,
              child: Text(
                "Schedule Appointment",
                style: kTextStyleBlackBold24,
                textAlign: TextAlign.center,
              ),
            ),
            kVerticalSpace8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date : ",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "10 Jun, 2023",
                  style: kTextStyleBlack16,
                ),
              ],
            ),
            kVerticalSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Choosed Time : ",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "07:00 PM",
                  style: kTextStyleBlack16,
                ),
              ],
            ),
            kVerticalSpace20,
            Text(
              "Call Reasons: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Chest Pain",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Vaccines",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Flu",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5.r,
                      backgroundColor: kbuttonColor,
                    ),
                    kHorizontalSpace12,
                    Text(
                      "Covid Testing",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
                kVerticalSpace8,
              ],
            ),
            kVerticalSpace12,
            Text(
              "Comments: ",
              style: kTextStyleBlack16,
              textAlign: TextAlign.left,
            ),
            kVerticalSpace12,
            Container(
              width: 0.8.sw,
              height: 0.2.sh,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: ktextfeildColor),
            ),
            kVerticalSpace12,
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return PopupCard(
                        scrollable1: true,
                        containerColor: kcontainerColor,
                        content: warningPopup(),
                      );
                    });
              },
              child: Container(
                width: 0.9.sw,
                height: 0.07.sh,
                decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Book Appointment",
                    style: kTextStyle16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget warningPopup() {
    return Container(
      color: kcontainerColor,
      width: 0.9.sw,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/Icons/Warning.svg"),
            kHorizontalSpace8,
            Text(
              "Warning",
              style: kTextStyleRed20,
              textAlign: TextAlign.center,
            )
          ],
        ),
        kVerticalSpace12,
        Text(
          "If you are experiencing chest pain or think you are having a heart attack or another life threatening experience, call 911 or emergency medical assistance immediately!",
          style: kTextStyleBlack16,
          textAlign: TextAlign.justify,
        ),
        kVerticalSpace12,
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 0.9.sw,
            height: 0.07.sh,
            decoration: BoxDecoration(
                color: kbuttonColor, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Continue",
                style: kTextStyle16,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
