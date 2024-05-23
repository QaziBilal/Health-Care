import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constatns/style.dart';

class MedicalRecordDetails extends StatelessWidget {
  String name;
  MedicalRecordDetails({super.key, required this.name});

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
                    name,
                    style: kTextStyleBlackBold24,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            kVerticalSpace50,
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              children: [
                Container(
                  margin: EdgeInsets.all(5.sp),
                  width: 0.2.sw,
                  height: 0.2.sh,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff21418A), Color(0xFF9EBAF5)])),
                  child: SvgPicture.asset(
                    "assets/Icons/Vector (1).svg",
                    width: 20.sp,
                    height: 20.sp,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.sp),
                  width: 0.2.sw,
                  height: 0.2.sh,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff21418A), Color(0xFF9EBAF5)])),
                  child: SvgPicture.asset(
                    "assets/Icons/Vector (1).svg",
                    width: 20.sp,
                    height: 20.sp,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5.sp),
                  width: 0.2.sw,
                  height: 0.2.sh,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff21418A), Color(0xFF9EBAF5)])),
                  child: SvgPicture.asset(
                    "assets/Icons/Vector (1).svg",
                    width: 20.sp,
                    height: 20.sp,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
