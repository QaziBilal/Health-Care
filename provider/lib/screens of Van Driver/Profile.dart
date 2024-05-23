import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/constatns/color.dart';
import 'package:provider/constatns/style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 30.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                Text(
                  "Profile",
                  style: kTextStyleBlackBold24,
                  textAlign: TextAlign.center,
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/Icons/logout.svg"))
              ],
            ),
          ),
          kVerticalSpace28,
          Text(
            "Welcome!",
            style: TextStyle(
                fontSize: 24.sp,
                fontFamily: "Roboto",
                color: Color(0xff7A7A7A)),
          ),
          kVerticalSpace12,
          Text(
            "Full Name",
            style: kTextStyleBlackBold24,
          ),
          kVerticalSpace12,
          Padding(
            padding: EdgeInsets.only(top: 5.sp, left: 15.sp, right: 15.sp),
            child: const DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: Colors.black,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
            ),
          ),
          SizedBox(
            width: 0.9.sw,
            height: 0.05.sh,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "FingerPrint",
                  style: kTextStyleBlackBold16,
                ),
                FlutterSwitch(
                    width: 0.15.sw,
                    height: 0.03.sh,
                    activeColor: Colors.grey.shade300,
                    inactiveColor: Colors.grey.shade300,
                    toggleColor: kbuttonColor,
                    value: isSwitched,
                    onToggle: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.sp, left: 15.sp, right: 15.sp),
            child: const DottedLine(
              direction: Axis.horizontal,
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 4.0,
              dashColor: Colors.black,
              dashGapLength: 4.0,
              dashGapColor: Colors.transparent,
            ),
          ),
          kVerticalSpace24,
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Full Name:",
                textAlign: TextAlign.left,
                style: kTextStyleBlack16,
              ),
              TextFormField(
                style: kTextStyleBlack20,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: ktextfeildColor),
              ),
              kVerticalSpace12,
              Text(
                "Phone Number:",
                textAlign: TextAlign.left,
                style: kTextStyleBlack16,
              ),
              TextFormField(
                style: kTextStyleBlack20,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: ktextfeildColor),
              ),
              kVerticalSpace12,
              Text(
                "Email:",
                textAlign: TextAlign.left,
                style: kTextStyleBlack16,
              ),
              TextFormField(
                style: kTextStyleBlack20,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: ktextfeildColor),
              ),
              kVerticalSpace12,
              Text(
                "Password:",
                textAlign: TextAlign.left,
                style: kTextStyleBlack16,
              ),
              TextFormField(
                obscureText: true,
                style: kTextStyleBlack20,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: ktextfeildColor),
              ),
              kVerticalSpace16,
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 0.9.sw,
                  height: 0.05.sh,
                  decoration: BoxDecoration(
                      color: kbuttonColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Save",
                      style: kTextStyle16,
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ]),
      )),
    );
  }
}
