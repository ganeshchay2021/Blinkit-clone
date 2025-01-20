// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blinkitclone/data/data.dart';
import 'package:blinkitclone/repository/widgets/common_page_banner.dart';
import 'package:blinkitclone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            CommonBanner(
              color: Colors.amber.shade200,
            ),
            const SizedBox(
              height: 20,
            ),
            UiHelper.customImage(
                image: "shopping-cart (1) 1.png", height: 140, width: 140),
            const SizedBox(
              height: 10,
            ),
            UiHelper.customText(
                text: "Reordering will be easy",
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontfamily: "Bold"),
            UiHelper.customText(
                text: "Items you order will show up here so you can&",
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 10),
            UiHelper.customText(
                text: "buy them again easily.",
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 10),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                UiHelper.customText(
                    text: "Bestsellers",
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                itemCount: Data.bestsellers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              height: 115,
                              width: 96,
                            ),
                            SizedBox(
                              height: 108,
                              width: 96,
                              child: UiHelper.customImage(
                                image:
                                    Data.bestsellers[index]["image"].toString(),
                                boxFit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: -1,
                              child: SizedBox(
                                height: 18,
                                width: 48,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.white,
                                    side: const BorderSide(
                                      color: Color(0XFF27AF34),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: UiHelper.customText(
                                      text: "ADD",
                                      color: const Color(0XFF27AF34),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 6,
                                      fontfamily: "Bold"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        UiHelper.customText(
                            text: Data.bestsellers[index]["text"].toString(),
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 8),
                        Row(
                          children: [
                            UiHelper.customImage(image: "timer 1.png"),
                            UiHelper.customText(
                              text: Data.bestsellers[index]["time"].toString(),
                              color: const Color(0XFF9C9C9C),
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            UiHelper.customImage(image: "image 47.png"),
                            UiHelper.customText(
                              text: Data.bestsellers[index]["Price"].toString(),
                              color: const Color(0XFF9C9C9C),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
