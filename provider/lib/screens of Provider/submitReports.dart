import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/constatns/style.dart';

import '../constatns/color.dart';

class SubmitReportsScreen extends StatelessWidget {
  const SubmitReportsScreen({super.key});

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
                      width: 0.22.sw,
                    ),
                    Text(
                      "Submit Reports",
                      style: kTextStyleBlackBold24,
                    ),
                  ],
                ),
              ),
              kVerticalSpace16,
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Results:",
                      textAlign: TextAlign.left,
                      style: kTextStyleBlack16,
                    ),
                    kVerticalSpace4,
                    TextFormField(
                      maxLines: 5,
                      style: kTextStyleBlack20,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: ktextfeildColor),
                    ),
                    kVerticalSpace16,
                    Text(
                      "Discharge Instructions:",
                      textAlign: TextAlign.left,
                      style: kTextStyleBlack16,
                    ),
                    kVerticalSpace4,
                    TextFormField(
                      maxLines: 5,
                      style: kTextStyleBlack20,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: ktextfeildColor),
                    ),
                    kVerticalSpace16,
                    Text(
                      "Medicines:",
                      textAlign: TextAlign.left,
                      style: kTextStyleBlack16,
                    ),
                    kVerticalSpace4,
                    TextFormField(
                      style: kTextStyleBlack20,
                      decoration: const InputDecoration(
                          hintText: "Enter Medicine Name",
                          border: InputBorder.none,
                          filled: true,
                          fillColor: ktextfeildColor),
                    ),
                    kVerticalSpace16,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Quantity:",
                          style: kTextStyleBlackBold16,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: kbuttonColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5.r),
                                      bottomLeft: Radius.circular(5.r))),
                              child: Center(
                                  child: Text(
                                "-",
                                style: kTextStyle16,
                              )),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: ktextfeildColor,
                              ),
                              child: Center(
                                  child: Text(
                                "2",
                                style: kTextStyleBlack16,
                              )),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: kbuttonColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5.r),
                                      bottomRight: Radius.circular(5.r))),
                              child: Center(
                                  child: Text(
                                "+",
                                style: kTextStyle16,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    kVerticalSpace12,
                    const DottedLine(),
                    kVerticalSpace16,
                    Container(
                      width: 0.9.sw,
                      height: 0.06.sh,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.r),
                          color: ktextfeildColor),
                      child: Center(
                          child: Text(
                        "Enter Medicine Total Price",
                        style: kTextStyleBlack16,
                      )),
                    ),
                    kVerticalSpace16,
                    Container(
                      width: 0.9.sw,
                      height: 0.06.sh,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: kbuttonColor),
                      child: Center(
                          child: Text(
                        "Submit",
                        style: kTextStyle20,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
