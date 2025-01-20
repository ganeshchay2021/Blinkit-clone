// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:blinkitclone/repository/widgets/ui_helper.dart';

class CommonBanner extends StatelessWidget {
  final Color color;
  final Color? textCOlor;
  final Color? iconColor;
  final Color? iconBgColor;

  const CommonBanner({
    super.key,
    required this.color,
    this.textCOlor,
    this.iconColor,
    this.iconBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 170,
          width: double.infinity,
          color: color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              UiHelper.customText(
                  text: "Blinkit in",
                  color: textCOlor ?? Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UiHelper.customText(
                          text: "16 minutes",
                          color: textCOlor ?? Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                      Row(
                        children: [
                          UiHelper.customText(
                              text: "HOME - ",
                              color: textCOlor ?? Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                          UiHelper.customText(
                              text: "Sujal Dave, Ratanada, Jodhpur (Raj) ",
                              color: textCOlor ?? Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              fontfamily: "Regular"),
                          const Icon(
                            CupertinoIcons.arrow_down,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: UiHelper.customImage(
                        image: "user 1.png", color: iconColor),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: iconBgColor ?? Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search \"Ice-Cream\"",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  suffixIcon: const Icon(
                    Icons.mic,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
