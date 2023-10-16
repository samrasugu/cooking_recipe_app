import 'package:cooking_recipe_app/widgets/recommended_recipe_widget.dart';
import 'package:flutter/material.dart';

class RecommendedRecipes extends StatelessWidget {
  const RecommendedRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      clipBehavior: Clip.none,
      itemBuilder: (context, index) {
        return const RecommendedRecipeWidget();
      },
    );
  }
}
