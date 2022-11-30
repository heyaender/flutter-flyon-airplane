// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cardBonus() {
      return Container(
        margin: EdgeInsets.only(
          top: 151,
          bottom: 91,
        ),
        padding: EdgeInsets.all(
          defaultmargin,
        ),
        height: 211,
        width: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/image_wallet.png',
              ),
            ),
            boxShadow: [
              BoxShadow(
                  color: purpleColor.withOpacity(0.25),
                  blurRadius: 50,
                  offset: Offset(0, 10))
            ]),
        child: Column(
          children: [
            Row(
              children: [
                // Expanded ditambahkan agar text tidak overflow ke logo, dan ketika text nama menjadi panjang maka text akan ke bawah
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteText.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Andrianto Cahyono Putro',
                        style: whiteText.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 6,
                  ),
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/image_logo.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteCloudColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardBonus(),
          ],
        ),
      ),
    );
  }
}
