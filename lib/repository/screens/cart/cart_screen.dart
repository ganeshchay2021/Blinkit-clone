// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blinkitclone/repository/widgets/common_page_banner.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        CommonBanner(
          color: Colors.amber.shade200,
        ),
      ],
    ));
  }
}
