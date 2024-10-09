import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../models/recipe.dart';

import '../../../../core/global/custom_colors.dart';
import '../../create_recipe/create_recipe_screen.dart';

class RecipeTile extends StatelessWidget {
  const RecipeTile({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: CupertinoListTile(
        padding: const EdgeInsets.symmetric(vertical: 8),
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              recipe.name!,
              style: TextStyle(
                color: CustomColors.just_regular_brown.withOpacity(0.8),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Custo: R\$${recipe.cost!.toStringAsFixed(2)}',
              style: TextStyle(
                color: CustomColors.just_regular_brown.withOpacity(0.8),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CreateRecipeScreen(recipe: recipe),
                )
            );
          },
          icon: Icon(
            Icons.edit,
            color: CustomColors.just_regular_brown.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
