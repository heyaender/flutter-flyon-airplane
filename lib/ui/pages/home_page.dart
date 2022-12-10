// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flyon_airplane_app/shared/theme.dart';
import 'package:flyon_airplane_app/ui/widgets/custom_popular_destination.dart';
import 'package:flyon_airplane_app/ui/widgets/cutom_new_destination.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        left: defaultmargin,
        right: defaultmargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,\nCyntia Lorenza Andriaharja',
                  style: darkText.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: greyText.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/image_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget popularDestination() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomPopularDestination(
              title: 'Lake Ciliwung',
              city: 'Jakarta',
              image: 'assets/images/image_destination-1.png',
              rating: 4.8,
            ),
            CustomPopularDestination(
              title: "White House",
              city: 'Surakarta',
              image: 'assets/images/image_destination-2.png',
              rating: 4.4,
            ),
            CustomPopularDestination(
              title: "Bora Bora",
              city: 'Tahiti',
              image: 'assets/images/image_destination-3.png',
              rating: 4.7,
            ),
            CustomPopularDestination(
              title: "Kiyomizu-Dera",
              city: 'Kyoto',
              image: 'assets/images/image_destination-4.png',
              rating: 4.9,
            ),
            CustomPopularDestination(
              title: "Rushmore Tree",
              city: 'South Dakota',
              image: 'assets/images/image_destination-5.png',
              rating: 4.2,
            ),
          ],
        ),
      ),
    );
  }

  Widget newDestination() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defaultmargin,
        right: defaultmargin,
        bottom: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: darkText.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          Column(
            children: [
              CustomNewDestination(
                title: 'Uluwatu Temple',
                city: 'Bali',
                imageUrl: 'assets/images/image_destination-s-1.png',
                rating: 4.4,
              ),
              CustomNewDestination(
                title: 'Forest Sanctuary',
                city: 'Bali',
                imageUrl: 'assets/images/image_destination-s-2.png',
                rating: 4.2,
              ),
              CustomNewDestination(
                title: 'National Historical Museum',
                city: 'Jakarta',
                imageUrl: 'assets/images/image_destination-s-3.png',
                rating: 4.1,
              ),
              CustomNewDestination(
                title: "Rushmore Tree",
                city: 'South Dakota',
                imageUrl: 'assets/images/image_destination-s-4.png',
                rating: 4.1,
              ),
              CustomNewDestination(
                title: "Bora Bora",
                city: 'Tahiti',
                imageUrl: 'assets/images/image_destination-s-5.png',
                rating: 4.7,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
