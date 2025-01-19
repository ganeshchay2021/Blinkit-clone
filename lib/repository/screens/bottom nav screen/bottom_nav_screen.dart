import 'package:blinkitclone/repository/screens/cart/cart_screen.dart';
import 'package:blinkitclone/repository/screens/category/category_screen.dart';
import 'package:blinkitclone/repository/screens/home/home_screen.dart';
import 'package:blinkitclone/repository/screens/print/print_screen.dart';
import 'package:blinkitclone/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class BottonNavScreen extends StatefulWidget {
  const BottonNavScreen({super.key});

  @override
  State<BottonNavScreen> createState() => _BottonNavScreenState();
}

class _BottonNavScreenState extends State<BottonNavScreen> {
  int currentIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const CategoryScreen(),
    const PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.customImage(image: "home 1.png"), label: ""),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(image: "shopping-bag 1.png"),
              label: ""),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(image: "category 1.png"), label: ""),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(image: "printer 1.png"), label: "")
        ],
      ),
    );
  }
}
