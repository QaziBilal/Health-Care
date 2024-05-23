import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/Constants/color.dart';
import 'package:patient/Constants/style.dart';
import 'package:patient/Screens/Home.dart';
import 'package:patient/Screens/Login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 40.sp),
              width: 0.6.sw,
              height: 0.15.sh,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/logo.png"),
                      fit: BoxFit.fill)),
            ),
            kVerticalSpace12,
            SizedBox(
              width: 0.9.sw,
              height: 0.1.sh,
              child: Center(
                child: Text(
                  "Hands on Provider",
                  style: kTextStyleBlackBold28,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  kVerticalSpace12,
                  Text(
                    "Confirm Password:",
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
                  kVerticalSpace12,
                  Text(
                    "Date of Birth:",
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
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Container(
                width: 0.9.sw,
                height: 0.07.sh,
                decoration: BoxDecoration(
                    color: kbuttonColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Sign up",
                    style: kTextStyle16,
                  ),
                ),
              ),
            ),
            kVerticalSpace12,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Alreay have an account.\t",
                  style: kTextStyleBlack16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: Text(
                    "Login",
                    style: kTextStyleBlue16,
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
