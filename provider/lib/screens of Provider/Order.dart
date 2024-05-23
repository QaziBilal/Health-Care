import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constatns/color.dart';
import '../constatns/style.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
                "Date:",
                style: kTextStyleBlack16,
              ),
              Text(
                "25 Sep, 2023",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Amount:",
                style: kTextStyleBlack16,
              ),
              Text(
                "\$12.00",
                style: kTextStyleID16,
              )
            ],
          ),
          kVerticalSpace8,
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupCard();
                },
              );
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
                "Date:",
                style: kTextStyleBlack16,
              ),
              Text(
                "20 Nov, 2019",
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
                "Delivered",
                style: kTextStyleBlue16,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Amount:",
                style: kTextStyleBlack16,
              ),
              Text(
                "\$121.00",
                style: kTextStyleID16,
              )
            ],
          ),
          kVerticalSpace8,
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PopupCard();
                },
              );
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

// ignore: use_key_in_widget_constructors
class PopupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 0.9.sw,
        height: 0.4.sh,
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
            kVerticalSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Patient Name:",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "Max Lim",
                  style: kTextStyleID16,
                )
              ],
            ),
            kVerticalSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Patient ID:",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "293iuh239",
                  style: kTextStyleID16,
                )
              ],
            ),
            kVerticalSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mobile No:",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "023874682",
                  style: kTextStyleID16,
                )
              ],
            ),
            kVerticalSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Location:",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "KP, Pakistan",
                  style: kTextStyleID16,
                )
              ],
            ),
            kVerticalSpace16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status:",
                  style: kTextStyleBlack16,
                ),
                Text(
                  "Delivered",
                  style: kTextStyleBlue16,
                )
              ],
            ),
            kVerticalSpace8,
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      contentPadding: EdgeInsets.all(10.sp),
    );
  }
}
