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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Andrianto Putro',
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
                ),
                Text(
                  'Pay',
                  style: whiteText.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Balance',
              style: whiteText.copyWith(
                fontSize: 14,
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteText.copyWith(fontSize: 26, fontWeight: medium),
            )
          ],
        ),
      );
    }

    Widget cardTitle() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 10,
        ),
        child: Text(
          'Big Bonus 🎉',
          style: darkText.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitleCard() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 50,
        ),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyText.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget buttonStart() {
      return Container(
        width: 220,
        height: 55,
        margin: EdgeInsets.only(
          bottom: 151,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                defaultradius,
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
          },
          child: Text(
            'Start Flying',
            style: whiteText.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
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
            cardTitle(),
            subtitleCard(),
            buttonStart(),
          ],
        ),
      ),
    );
  }
}
