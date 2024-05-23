import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient/Constants/style.dart';
import 'package:patient/Screens/MedicalRecord1.dart';

class MedicalRecordsScreen extends StatelessWidget {
  List iconsList = ["White 1", "White 4", "White 2", "White 3"];
  List iconName = [
    "Reason for Visit",
    "Lab Results",
    "Medications",
    "Health Summary"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.sp),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back)),
                kHorizontalSpace8,
                Text(
                  "Your Medical Recoreds",
                  style: kTextStyleBlackBold24,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          kVerticalSpace28,
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: iconsList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MedicalRecordDetails(
                                    name: iconName[index],
                                  )));
                    },
                    child: customContainer(iconsList[index], iconName[index]));
              })
        ],
      )),
    );
  }

  Widget customContainer(String iconName, String name) {
    return Container(
      margin: EdgeInsets.all(5.sp),
      width: 0.2.sw,
      height: 0.2.sh,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff21418A), Color(0xFF9EBAF5)])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/Icons/$iconName.svg"),
          kVerticalSpace4,
          Text(
            name,
            style: kTextStyle12,
          ),
        ],
      ),
    );
  }
}
