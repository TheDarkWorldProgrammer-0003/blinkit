import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

import '../bottomnav/bottomnavscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomImage(img: "blinkit.png"),
          SizedBox(
            height: 20,
          ),
          UiHelper.CustomText(
              text: "India's Last minute app",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold"),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 4,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              height: 220,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  UiHelper.CustomText(
                      text: "Shrey",
                      color: Colors.black,
                      fontweight: FontWeight.w500,
                      fontsize: 14),
                  // For writing text in the container we use Text widget
                  SizedBox(
                    height: 5,
                  ),
                  UiHelper.CustomText(
                      text: "7982xxxxxx",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: "bold"),
                  //    For writing the phone no., we used Text Widget
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 48,
                    width: 295,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UiHelper.CustomText(
                              text: " Login with ",
                              color: Colors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: "bold"),
                          SizedBox(
                            width: 5,
                          ),
                          UiHelper.CustomImage(img: "zomato.png"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  UiHelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Colors.grey,
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                      fontfamily: "regular"),
                  SizedBox(
                    height: 20,
                  ),
                  UiHelper.CustomText(
                      text: "or login with phone number",
                      color: Colors.green,
                      fontweight: FontWeight.normal,
                      fontsize: 14,
                      fontfamily: "regular")
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
