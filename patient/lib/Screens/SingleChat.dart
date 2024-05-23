import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/Constants/color.dart';
import 'package:patient/Constants/style.dart';
import 'package:patient/Models/ModelMessage.dart';
import 'package:patient/Widgets/Badge.dart';

class SingleChat extends StatelessWidget {
  const SingleChat({super.key});

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
                  MyBadge(
                    top: 1,
                    right: 1,
                    color: const Color(0xff54EEB4),
                    value: "",
                    child: CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      radius: 30.r,
                    ),
                  ),
                  kHorizontalSpace12,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Faiz",
                        style: kTextStyleBlackBold16,
                      ),
                      const Text("Online"),
                    ],
                  )
                ],
              ),
            ),
            kVerticalSpace8,
            const DottedLine(),
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (messages[index].messageType == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: messages[index].messageType == "receiver"
                                  ? const Radius.circular(0)
                                  : const Radius.circular(15),
                              bottomLeft: const Radius.circular(15),
                              topRight: const Radius.circular(15),
                              bottomRight:
                                  messages[index].messageType == "receiver"
                                      ? const Radius.circular(15)
                                      : const Radius.circular(0),
                            ),
                            color: (messages[index].messageType == "receiver"
                                ? const Color(0xffF5F5F5)
                                : const Color(0xffF3B08F))),
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          messages[index].messageContent,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 6.sp),
                        width: 0.85.sw,
                        height: 0.05.sh,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: ktextfeildColor,
                            suffixIcon: const Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            ),
                            hintText: "Message",
                            hintStyle: kTextStyleBlack16,
                          ),
                        ),
                      ),
                      kVerticalSpace12,
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          backgroundColor: Color(0xffF5F5F5),
                          child: Center(
                              child: Icon(
                            Icons.send,
                            color: kbuttonColor,
                          )),
                        ),
                      )
                    ],
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
