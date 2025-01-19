import 'package:blinkitclone/data/data.dart';
import 'package:blinkitclone/repository/widgets/common_page_banner.dart';
import 'package:blinkitclone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            CommonBanner(color: Colors.amber.shade200),
            const SizedBox(
              height: 20,
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
                                image: Data.groceryKitchen[index]["image"]
                                    .toString(),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            UiHelper.customText(
                              text:
                                  Data.groceryKitchen[index]["text"].toString(),
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
                                image: Data.groceryKitchen2[index]["image"]
                                    .toString(),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            UiHelper.customText(
                              text: Data.groceryKitchen2[index]["text"]
                                  .toString(),
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
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    UiHelper.customText(
                      text: "Snacks & Drinks",
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
                                image: Data.snacksDrinks[index]["image"]
                                    .toString(),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            UiHelper.customText(
                              text: Data.snacksDrinks[index]["text"].toString(),
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
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    UiHelper.customText(
                      text: "Household Essentials",
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
                                image: Data.householdEssentials[index]["image"]
                                    .toString(),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            UiHelper.customText(
                              text: Data.householdEssentials[index]["text"]
                                  .toString(),
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
        ),
      ),
    );
  }
}
