import 'package:cooking_recipe_app/widgets/custom_search_field.dart';
import 'package:cooking_recipe_app/widgets/recommended_recipes.dart';
import 'package:cooking_recipe_app/widgets/todays_recipes.dart';
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
              mainAxisSize: MainAxisSize.min,
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
                const TodaysRecipes(),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Recommended',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const RecommendedRecipes(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
