import 'package:flutter/material.dart';
import '../../../../models/recipe.dart';

import '../../../../core/global/custom_colors.dart';
import '../../create_recipe/create_recipe_screen.dart';

String imagePath = '';

void updateImagePath(String categoryId) {
  switch (categoryId) {
    case '3aHDpcu4FW':
      imagePath = 'images/cards/cake.jpg';
      break;
    case 'bS5JKmWBQ0':
      imagePath = 'images/cards/party_candy.jpg';
      break;
    case 'AlBX0mBk3G':
    imagePath = 'images/cards/filling.jpg';
    break;
    case 'Buofy8lXNc':
      imagePath = 'images/cards/homemade_cake.jpg';
      break;
    case 'beDkDqLiQW':
      imagePath = 'images/cards/dessert.jpg';
      break;
    case 'EYdx2m5HaW':
      imagePath = 'images/cards/titbit.jpg';
      break;
    case 'tia5wVdUHX':
      imagePath = 'images/cards/easter_egg.jpg';
      break;
    case 'ELjXmc5UjU':
      imagePath = 'images/cards/snack.jpg';
      break;
    case 'WKrOYJDHRC':
      imagePath = 'images/cards/others.jpg';
      break;
    default:
      imagePath = 'images/cards/others.jpg';
  }
}

class RecipeTile extends StatelessWidget {
  const RecipeTile({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    updateImagePath(recipe.recipeCategory?.id ?? '');

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => CreateRecipeScreen(recipe: recipe),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Imagem da receita
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.broken_image,
                  size: 80,
                  color: Colors.grey.shade300,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name!,
                    style: TextStyle(
                      color: CustomColors.just_regular_brown.withOpacity(0.8),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Custo: R\$${recipe.cost?.toStringAsFixed(2) ?? '0.00'}',
                    style: TextStyle(
                      color: CustomColors.just_regular_brown.withOpacity(0.8),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
