// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';
import 'package:flyon_airplane_app/ui/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        child: Text(
          'Select Your\nFavorite Seat',
          style: darkText.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            // NOTE : AVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icons/icon_available.png',
                  ),
                ),
              ),
            ),
            Text(
              "Available",
              style: darkText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            // NOTE : SELECTED
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icons/icon_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              "Selected",
              style: darkText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            // NOTE : UNAVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icons/icon_unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              "Unavailable",
              style: darkText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            18,
          ),
          color: whiteColor,
        ),
        child: Column(
          children: [
            // NOTE : SEAT INDICATORS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "A",
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "B",
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "",
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "C",
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      "D",
                      style: greyText.copyWith(
                        fontSize: 16,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // NOTE : SEAT 1
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyText.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT 2
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyText.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT 3
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 1,
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyText.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT 4
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyText.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            // NOTE : SEAT 5
            Container(
              margin: EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyText.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteCloudColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          children: [
            title(),
            seatStatus(),
            selectSeat(),
          ],
        ),
      ),
    );
  }
}
