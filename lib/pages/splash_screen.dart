import 'package:cooking_recipe_app/pages/home_screen.dart';
import 'package:cooking_recipe_app/value_objects/app_asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              chefSvg,
              height: 400,
            ),
            const Text(
              "25K + PREMIUM RECIPES",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Text(
              'It\'s\nCooking\nTime!',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headlineLarge,
                fontSize: 60,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                height: 1.0,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 25.0,
                ),
              ),
              onPressed: () {
                Get.to(const HomeScreen());
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
