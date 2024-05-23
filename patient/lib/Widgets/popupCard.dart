import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/Constants/color.dart';
import 'package:patient/Constants/style.dart';

class PopupCard extends StatelessWidget {
  final Widget content;

  final Color containerColor;

  bool scrollable1;

  PopupCard(
      {super.key,
      required this.content,
      this.scrollable1 = false,
      this.containerColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: containerColor,
      scrollable: false,
      content: content,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      contentPadding: EdgeInsets.all(10.sp),
    );
  }
}
