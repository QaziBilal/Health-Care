import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/Widgets/Badge.dart';
import 'package:provider/constatns/color.dart';
import 'package:provider/screens%20of%20Provider/singleChat.dart';
import '../constatns/style.dart';

class PatientDriverChats extends StatelessWidget {
  const PatientDriverChats({super.key});

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
                      width: 0.12.sw,
                    ),
                    Text(
                      "Patient-Doctor Chats \n(Post Visit Consultations)",
                      style: kTextStyleBlack20,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              kVerticalSpace24,
              customChat(context, true),
              kVerticalSpace12,
              customChat(context, true),
              kVerticalSpace12,
              customChat(context, false),
              kVerticalSpace12,
              customChat(context, false),
              kVerticalSpace12,
              customChat(context, false),
              kVerticalSpace12,
              customChat(context, false),
              kVerticalSpace12,
              customChat(context, false),
            ],
          ),
        ),
      ),
    );
  }

  Widget customChat(context, bool isUnread) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SingleChat()));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 0.9.sw,
        height: 0.11.sh,
        decoration: BoxDecoration(
          color: kcontainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                MyBadge(
                  top: 1,
                  right: 1,
                  value: "",
                  color: const Color(0xff54EEB4),
                  child: CircleAvatar(
                    backgroundImage: const NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    radius: 30.r,
                  ),
                ),
                kHorizontalSpace12,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Dr. Fiaz",
                          style: kTextStyleBlack16,
                        ),
                      ],
                    ),
                    Text(
                      "Cardialogist",
                      style: kTextStyleBlack16,
                    ),
                    const Spacer(),
                    Text(
                      "Hi, Nice to meet you....",
                      style: kTextStyleBlack12,
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "12:15 am",
                  textAlign: TextAlign.right,
                ),
                kVerticalSpace4,
                if (isUnread == true)
                  CircleAvatar(
                    radius: 10.r,
                    child: Center(
                        child: Text(
                      "2",
                      style: kTextStyle12,
                    )),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
