// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE : 0. AVAILABLE, 1. SELECTED, 2. UNAVAILABLE

  final int status;

  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return availableSeatColor;
        case 1:
          return selectedSeatColor;
        case 2:
          return unavailableSeatColor;
        default:
          return availableSeatColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return purpleColor;
        case 1:
          return selectedSeatColor;
        case 2:
          return unavailableSeatColor;
        default:
          return availableSeatColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              "YOU",
              style: whiteText.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      margin: EdgeInsets.only(
        top: 8,
        bottom: 8,
      ),
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}
