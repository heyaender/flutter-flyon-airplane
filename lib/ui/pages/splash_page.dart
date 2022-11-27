import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(
                bottom: 50,
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/image_logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'FLYON',
              style: whiteText.copyWith(
                fontSize: 32,
                fontWeight: bold,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
