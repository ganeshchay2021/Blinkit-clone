import 'package:blinkitclone/domain/constant/app_colors.dart';
import 'package:blinkitclone/repository/widgets/common_page_banner.dart';
import 'package:blinkitclone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.printScafoldBackground,
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CommonBanner(color: Colors.amber.shade200),
          const SizedBox(
            height: 50,
          ),
          UiHelper.customText(
              text: "Print Store",
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 32,
              fontfamily: "Bold"),
          UiHelper.customText(
            text: "Blinkit ensures secure prints at every stage",
            color: const Color(0XFF9C9C9C),
            fontWeight: FontWeight.w700,
            fontSize: 15,
            fontfamily: "Bold",
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 163,
            width: 381,
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UiHelper.customText(
                    text: "Documents",
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UiHelper.customText(
                            text: "✦  Price starting at rs 3/page",
                            color: const Color(0XFF9C9C9C),
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                        UiHelper.customText(
                            text: "✦  Paper quality: 70 GSM",
                            color: const Color(0XFF9C9C9C),
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                        UiHelper.customText(
                            text: "✦  Single side prints",
                            color: const Color(0XFF9C9C9C),
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 125,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: UiHelper.customText(
                              text: "Upload Files",
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        )
                      ],
                    ),
                    UiHelper.customImage(image: "image 62.png"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
