import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UiHelper {
  static customImage({required String image}) {
    return Image.asset("assets/images/$image");
  }

  static customText(
      {required String text,
      required Color color,
      required FontWeight fontWeight,
      String? fontfamily,
      required double fontSize}) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontfamily ?? "Regular",
        fontSize: fontSize,
      ),
    );
  }
}
