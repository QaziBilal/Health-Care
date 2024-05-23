import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/constatns/color.dart';
import 'package:provider/constatns/style.dart';
import 'package:provider/screens%20of%20Patient/Home.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 20.sp),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                kVerticalSpace12,
                Text(
                  "Add your Card",
                  style: kTextStyleBlackBold24,
                ),
                kVerticalSpace12,
                Container(
                  width: 0.9.sw,
                  height: 0.2.sh,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/Images/card.png"),
                  )),
                ),
                kVerticalSpace12,
                TextFormField(
                  obscureText: true,
                  style: kTextStyleBlack20,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintText: "Card Number",
                      hintStyle: kTextStyleGrey16,
                      fillColor: ktextfeildColor),
                ),
                kVerticalSpace12,
                TextFormField(
                  obscureText: true,
                  style: kTextStyleBlack20,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintText: "Card Holder Name",
                      hintStyle: kTextStyleGrey16,
                      fillColor: ktextfeildColor),
                ),
                kVerticalSpace12,
                TextFormField(
                  obscureText: true,
                  style: kTextStyleBlack20,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintText: "Expiration Date",
                      hintStyle: kTextStyleGrey16,
                      fillColor: ktextfeildColor),
                ),
                kVerticalSpace12,
                TextFormField(
                  obscureText: true,
                  style: kTextStyleBlack20,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      hintText: "Security Code (CVV)",
                      hintStyle: kTextStyleGrey16,
                      fillColor: ktextfeildColor),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Payment()));
                  },
                  child: Container(
                    width: 0.9.sw,
                    height: 0.07.sh,
                    decoration: BoxDecoration(
                        color: kbuttonColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Add Card",
                        style: kTextStyle16,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 20.sp),
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
                    width: 0.25.sw,
                  ),
                  Text(
                    "Payment",
                    style: kTextStyleBlackBold24,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            kVerticalSpace24,
            SizedBox(
              width: 0.9.sw,
              height: 0.1.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "xxxx32323",
                        style: kTextStyleBlack12,
                      ),
                      Text(
                        "Visa",
                        style: kTextStyleBlack16,
                      )
                    ],
                  ),
                  Text(
                    "Expire 12/25",
                    style: kTextStyleBlack12,
                  )
                ],
              ),
            ),
            DottedLine(),
            kVerticalSpace12,
            SizedBox(
              width: 0.9.sw,
              height: 0.1.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "xxxx7423",
                        style: kTextStyleBlack12,
                      ),
                      Text(
                        "Card",
                        style: kTextStyleBlack16,
                      )
                    ],
                  ),
                  Text(
                    "Expire 12/25",
                    style: kTextStyleBlack12,
                  )
                ],
              ),
            ),
            DottedLine(),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Confirming()));
              },
              child: Container(
                width: 0.9.sw,
                height: 0.07.sh,
                decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Add Card",
                    style: kTextStyle16,
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class Confirming extends StatelessWidget {
  const Confirming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10.sp, right: 10.sp, bottom: 20.sp),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.sp),
                child: Center(
                  child: Text(
                    "Confirmation and Payment \n Warning",
                    style: kTextStyleBlackBold24,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 0.9.sw,
                height: 0.35.sh,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/Images/Card Mobile.png"),
                  fit: BoxFit.fill,
                )),
              ),
              Text(
                "Careful! You will be charged a \$200 non-refundable appointment fee for eleMED to come right to your door and take care of you via a certified Medical Doctor and Registered Nurse. Once you schedule your appointment you will have five minutes to cancel. We look forward to helping you!",
                style: kTextStyleGrey16,
                textAlign: TextAlign.center,
              ),
              kVerticalSpace12,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount:",
                    style: kTextStyleBlackBold16,
                  ),
                  Text(
                    "\$200",
                    style: kTextStyleBlackBold16,
                  )
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: Container(
                  width: 0.9.sw,
                  height: 0.07.sh,
                  decoration: BoxDecoration(
                      color: kbuttonColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Add Card",
                      style: kTextStyle16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
