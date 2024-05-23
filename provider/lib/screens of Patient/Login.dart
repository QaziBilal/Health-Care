import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/constatns/color.dart';
import 'package:provider/constatns/style.dart';
import 'package:provider/screens%20of%20Patient/Card.dart';
import 'package:provider/screens%20of%20Patient/Register.dart';
import 'package:provider/screens%20of%20Provider/Login.dart';
import 'package:provider/screens%20of%20Van%20Driver/login.dart';

class LoginPatientScreen extends StatelessWidget {
  const LoginPatientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.only(top: 0.12.sh),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10.sp),
            width: 0.6.sw,
            height: 0.15.sh,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Images/logo.png"),
                    fit: BoxFit.fill)),
          ),
          SizedBox(
            width: 0.9.sw,
            height: 0.1.sh,
            child: Text(
              "TeleMedicine Doctor Portal",
              style: kTextStyleBlackBold28,
            ),
          ),
          kVerticalSpace24,
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            ]),
          ),
          kVerticalSpace12,
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const AddCard()));
            },
            child: Container(
              width: 0.9.sw,
              height: 0.07.sh,
              decoration: BoxDecoration(
                  color: kbuttonColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Login",
                  style: kTextStyle16,
                ),
              ),
            ),
          ),
          kVerticalSpace24,
          SvgPicture.asset(
            "assets/Icons/bio.svg",
            width: 0.07.sw,
            height: 0.07.sh,
            color: kbuttonColor,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account\t",
                style: kTextStyleBlack16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: "Roboto",
                      color: kbuttonColor,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Want To become a Provider\t",
                style: kTextStyleBlack16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginProScreen()));
                },
                child: Text(
                  "Click Here",
                  style: kTextStyleBlue16,
                ),
              )
            ],
          ),
          kVerticalSpace12,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Want To become a Van Driver\t",
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
                  "Click Here",
                  style: kTextStyleBlue16,
                ),
              )
            ],
          )
        ]),
      )),
    );
  }
}
