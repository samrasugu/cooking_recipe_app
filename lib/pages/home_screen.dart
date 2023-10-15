import 'package:cooking_recipe_app/value_objects/app_asset_strings.dart';
import 'package:cooking_recipe_app/widgets/custom_recipe_card.dart';
import 'package:cooking_recipe_app/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What would you\nlike to cook?',
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    height: 1.3,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomSearchField(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Todays recipes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const CustomRecipeCard(
                        imagePath: friesImage,
                        title: 'Penne Fries',
                        time: '30 MIN',
                        level: 'EASY',
                        rating: '4.8',
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
