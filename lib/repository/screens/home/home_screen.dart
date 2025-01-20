import 'package:blinkitclone/data/data.dart';
import 'package:blinkitclone/repository/widgets/common_page_banner.dart';
import 'package:blinkitclone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        const CommonBanner(
          textCOlor: Colors.white,
          iconBgColor: Colors.black,
          iconColor: Colors.white,
          color: Color(0XFFEC0505),
        ),
        const Divider(
          height: 2,
        ),
        Container(
          height: 220,
          color: const Color(0XFFEC0505),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        UiHelper.customImage(image: "image 60.png"),
                        UiHelper.customImage(image: "image 55.png"),
                      ],
                    ),
                    UiHelper.customText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    Row(
                      children: [
                        UiHelper.customImage(image: "image 55.png"),
                        UiHelper.customImage(image: "image 60.png"),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  itemExtent: 110,
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: Data.dewaliSale.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0XFFEAD3D3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              UiHelper.customText(
                                text: Data.dewaliSale[index]["text"].toString(),
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                              const Spacer(),
                              UiHelper.customImage(
                                  image: Data.dewaliSale[index]["image"]
                                      .toString(),
                                  boxFit: BoxFit.cover),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: Data.homeDewaliSale.length,
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
                                Data.homeDewaliSale[index]["image"].toString(),
                            boxFit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
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
                        text: Data.homeDewaliSale[index]["text"].toString(),
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 8),
                    Row(
                      children: [
                        UiHelper.customImage(image: "timer 1.png"),
                        UiHelper.customText(
                          text: Data.homeDewaliSale[index]["time"].toString(),
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
                          text: Data.homeDewaliSale[index]["Price"].toString(),
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
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                UiHelper.customText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontfamily: "Bold",
                  fontSize: 14,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Data.groceryKitchen.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: const Color(0XFFD9EBEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.customImage(
                            image:
                                Data.groceryKitchen[index]["image"].toString(),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        UiHelper.customText(
                          text: Data.groceryKitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
