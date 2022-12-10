// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_button.dart';
import 'package:flyon_airplane_app/ui/widgets/detail_page_photos.dart';
import 'package:flyon_airplane_app/ui/widgets/interest_list.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/image_destination-1.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget backgroundShadow() {
      return Container(
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        height: 214,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              transparantColor.withOpacity(0),
              blackColor.withOpacity(0.8),
            ],
          ),
        ),
      );
    }

    Widget content() {
      Widget emblem() {
        return Container(
          width: double.infinity,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/icons/emblem.png',
              ),
            ),
          ),
        );
      }

      Widget title() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultmargin,
            right: defaultmargin,
            top: 232,
          ),
          width: double.infinity,
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lake Ciliwung',
                      style: whiteText.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Jakarta',
                      style: whiteText.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 46,
                    height: 24,
                  ),
                  Icon(
                    Icons.star,
                    color: yellowColor,
                    size: 24,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '4.8',
                    style: whiteText.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }

      Widget description() {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(
            left: defaultmargin,
            right: defaultmargin,
            top: 20,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(
              18,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About',
                style: darkText.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                style: darkText.copyWith(
                  fontWeight: regular,
                  height: 1.6,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
              ),
              Text(
                'Photos',
                style: darkText.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Row(
                children: [
                  DetailPagePhotos(
                    imageUrl: 'assets/images/image_destination-s-6.png',
                  ),
                  DetailPagePhotos(
                    imageUrl: 'assets/images/image_destination-s-7.png',
                  ),
                  DetailPagePhotos(
                    imageUrl: 'assets/images/image_destination-s-8.png',
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Interest',
                style: darkText.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      InterestList(
                        textItem: 'Kids Park',
                      ),
                      InterestList(
                        textItem: 'Honor Bridge',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InterestList(
                        textItem: 'City Museum',
                      ),
                      InterestList(
                        textItem: 'Central Mall',
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      }

      Widget bookCheckout() {
        return Container(
          margin: EdgeInsets.only(
            left: defaultmargin,
            right: defaultmargin,
            top: 30,
            bottom: 31,
          ),
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'IDR',
                          style: darkText.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '2.500.000',
                          style: darkText.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'per orang',
                      style: greyText.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                title: 'Book Now',
                onTap: () {},
                width: 170,
              ),
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SafeArea(
          child: Column(
            children: [emblem(), title(), description(), bookCheckout()],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteCloudColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            backgroundImage(),
            backgroundShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
