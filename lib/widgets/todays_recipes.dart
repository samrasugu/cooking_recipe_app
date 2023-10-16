import 'package:cooking_recipe_app/value_objects/app_asset_strings.dart';
import 'package:cooking_recipe_app/widgets/custom_recipe_card.dart';
import 'package:flutter/material.dart';

class TodaysRecipes extends StatelessWidget {
  const TodaysRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        clipBehavior: Clip.none,
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
    );
  }
}
