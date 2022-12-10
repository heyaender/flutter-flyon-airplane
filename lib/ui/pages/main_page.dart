// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';
import 'package:flyon_airplane_app/ui/pages/home_page.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_bottom_navigation_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget bottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: defaultmargin,
          right: defaultmargin,
          bottom: 30,
        ),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomBottomNavigationItem(
              imageUrl: 'assets/icons/fi_globe.png',
              isSelected: true,
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icons/fi_book-open.png',
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icons/fi_credit-card.png',
            ),
            CustomBottomNavigationItem(
              imageUrl: 'assets/icons/fi_settings.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContent() {
    return HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F8),
      body: Stack(
        children: [
          buildContent(),
          bottomNavigation(),
        ],
      ),
    );
  }
}
