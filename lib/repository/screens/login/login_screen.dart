import 'package:blinkitclone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class LoginSreen extends StatelessWidget {
  const LoginSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //on boarding image
            UiHelper.customImage(image: "Blinkit Onboarding Screen.png"),

            const SizedBox(
              height: 20,
            ),

            //app logo
            UiHelper.customImage(image: "image 10.jpg"),

            const SizedBox(
              height: 20,
            ),

            //on boarding text
            UiHelper.customText(
                text: "India’s last minute app",
                color: const Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontfamily: "Bold"),
            const SizedBox(
              height: 20,
            ),

            //Container of login button with some details
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                height: 210,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),

                    //User's name
                    UiHelper.customText(
                      text: "Ganesh",
                      color: const Color(0XFF000000),
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //User's account
                    UiHelper.customText(
                      text: "78277XXXX",
                      color: const Color(0XFF9C9C9C),
                      fontWeight: FontWeight.bold,
                      fontfamily: "Bold",
                      fontSize: 14,
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //login button
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: const Color(0XFFE23744),
                        ),
                        onPressed: () {},
                        //Text on login button
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.customText(
                              text: "Login with",
                              color: Colors.white,
                              fontfamily: "Bold",
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            UiHelper.customImage(
                              image: "image 9.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    //some text
                    UiHelper.customText(
                        text:
                            "Access your saved addresses from Zomato automatically!",
                        color: const Color(0XFF9C9C9C),
                        fontWeight: FontWeight.w400,
                        fontSize: 10),
                    const SizedBox(
                      height: 15,
                    ),

                    //login with phone number
                    UiHelper.customText(
                        text: "or login with phone number",
                        color: const Color(0XFF269237),
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
