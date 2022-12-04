// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/fi_globe.png'),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/fi_book-open.png'),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: transparantColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/fi_credit-card.png'),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: transparantColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/fi_settings.png'),
                    ),
                  ),
                ),
                Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: transparantColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F8),
      body: Stack(
        children: [
          bottomNavigation(),
        ],
      ),
    );
  }
}
