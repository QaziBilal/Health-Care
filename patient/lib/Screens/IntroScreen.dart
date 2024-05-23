import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/Constants/color.dart';
import 'package:patient/Constants/style.dart';
import 'package:patient/Screens/Home.dart';
import 'package:patient/Screens/Register.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController pageController = PageController();
  List images = [
    "assets/Images/ThirdImage.png",
    "assets/Images/SecondImage.png",
    "assets/Images/firstIamge.png",
  ];

  List titles = ["Account Creation", "Appointment Booking", "Track and Chat"];

  List desc = [
    "Setting up your eleMED account is simple. Set it up now so you'll be ready to call our state-of-the-art Medi-Van to your door with just a few taps on your eleMED app!",
    "Once you're fully registered and have saved your Credit Card, you can make an appointment with just one tap! eleMED makes it easy to book an appointment now or schedule for the future at your convenience, anywhere you need us",
    "Once you've booked an appointment youcan easily see exactly where your eleMED medi-van is and what the ETA is. You can also send a chat message to your hands-on medical provider with any special requests or questions. And you can chat with your Doctor after your appointment to follow up and let us know how you're doing!"
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemCount: images.length,
              onPageChanged: onChanged,
              itemBuilder: (context, index) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      kVerticalSpace12,
                      SizedBox(
                        height: 0.15.sh,
                        width: 0.6.sw,
                        child: Image.asset(
                          "assets/Images/logo.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 0.35.sh,
                        width: 0.8.sw,
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                      kVerticalSpace12,
                      Text(
                        titles[index],
                        style: kTextStyleBlackBold24,
                      ),
                      kVerticalSpace12,
                      Padding(
                        padding: EdgeInsets.all(10.sp),
                        child: Text(
                          desc[index],
                          style: kTextStyleGrey16,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]);
              },
            ),
            if (currentPage != 2)
              Positioned(
                  top: 0.88.sh,
                  left: 0.4.sw,
                  child: Row(
                    children: List<Widget>.generate(3, (index) {
                      return Center(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 6.r,
                            backgroundColor: index == currentPage
                                ? kbuttonColor
                                : Color(0xFF979696),
                          ),
                        ),
                      );
                    }),
                  )),
            if (currentPage == 2)
              Positioned(
                top: 0.85.sh,
                left: 0.05.sw,
                child: GestureDetector(
                  onTap: () {
                    if (currentPage == 2) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterScreen()));
                    } else {
                      setState(() {
                        currentPage++;
                      });
                    }
                  },
                  child: Container(
                    height: 0.06.sh,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        color: kbuttonColor,
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: kTextStyle16,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  onChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }
}
