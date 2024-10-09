import 'package:get_it/get_it.dart';

import '../stores/others/user_manager_store.dart';
import 'ingredient.dart';
import 'recipe.dart';

class IngredientUsed {
  IngredientUsed({
    this.id,
    this.ingredient,
    this.quantity,
    this.cost,
    this.recipe,
    this.user_id,
  });

  int? id;
  Ingredient? ingredient;
  Recipe? recipe;
  int? user_id;
  int? quantity;
  double? cost;

  @override
  String toString() {
    return 'Ingredient Used{id: $id, user_id: $user_id, ingredient: $ingredient, quantity: $quantity, cost: $cost, recipe: $recipe}';
  }

  Map<String, dynamic> toMap() {
    final userManagerStore = GetIt.I<UserManagerStore>();
    if (userManagerStore.tokenData != null && userManagerStore.tokenData!.user != null) {
      user_id = userManagerStore.tokenData!.user!.id!;

      return {
        'ingredient_id': ingredient!.id!,
        'cost': cost ?? 19.98,
        'recipe_id': recipe!.id!,
        'quantity': quantity ?? 1998,
        'user_id': user_id,
      };
    } else {
      throw Exception("Usuário não autenticado. Não é possível criar o ingrediente.");
    }
  }

  factory IngredientUsed.fromMap(Map<String, dynamic> map) {
    return IngredientUsed(
      id: map['id'],
      user_id: map['user'] != null ? map['user']['id'] as int : 0,
      cost: map['cost'] is double ? (map['cost'] ?? 0.0) as double : (map['cost'] ?? 0).toDouble(),
      quantity: (map['quantity'] ?? 0) as int,
      ingredient: Ingredient.fromMap(map['ingredient'] ?? {}),
      recipe: Recipe.fromMap(map['recipe'] ?? {}),
    );
  }
}
