
import 'package:get_it/get_it.dart';

import '../stores/others/user_manager_store.dart';
import 'ingredient_used.dart';
import 'recipe_category.dart';

class Recipe {
  Recipe({
    this.id,
    this.name,
    this.cost,
    this.recipeCategory,
    this.ingredientsUsed,
  });

  int? id;
  String? name;
  double? cost;
  RecipeCategory? recipeCategory;
  List<IngredientUsed>? ingredientsUsed;

  @override
  String toString() {
    return 'Receita{id: $id, name: $name, cost: $cost, recipeCategory: $recipeCategory}';
  }

  Map<String, dynamic> toMap() {
    final userManagerStore = GetIt.I<UserManagerStore>();
    final user_id = userManagerStore.tokenData!.user!.id!;

    return {
      'name': name,
      'cost': cost,
      'recipe_category_id': recipeCategory!.id!,
      'user_id': user_id,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      id: map['id'],
      name: (map['name'] ?? '') as String,
      cost: map['cost'] is double ? (map['cost'] ?? 0.0) as double : (map['cost'] ?? 0).toDouble(),
      recipeCategory: RecipeCategory.fromMap(map['category'] ?? {}),
      ingredientsUsed: List<IngredientUsed>.from((map['ingredients_used'] ?? []).map((x) => IngredientUsed.fromMap(x))),
    );
  }
}
