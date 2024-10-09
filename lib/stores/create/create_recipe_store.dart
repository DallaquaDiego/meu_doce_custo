// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:meu_doce_custo/stores/create/create_ingredient_used_store.dart';
import 'package:mobx/mobx.dart';

import '../../models/ingredient_used.dart';
import '../../models/recipe.dart';
import '../../models/recipe_category.dart';
import '../../repositories/recipe_repository.dart';

/*Comando que precisa executar no terminal:
flutter packages pub run build_runner watch
flutter pub run build_runner watch --delete-conflicting-outputs
dart run build_runner watch -d
*/

part 'create_recipe_store.g.dart';

class CreateRecipeStore = _CreateRecipeStore with _$CreateRecipeStore;

abstract class _CreateRecipeStore with Store {
  _CreateRecipeStore(this.recipe) {
    _name = recipe?.name ?? '';
    _recipeCategory = recipe?.recipeCategory;
    _selectedIngredients = ObservableList<IngredientUsed>.of(recipe?.ingredientsUsed ?? []);
  }

  late Recipe? recipe;

  @readonly
  String _name = '';

  @action
  void setName(String value) => _name = value;

  @computed
  bool get nameValid => _name.length >= 2;

  String? get nameError {
    if (!showErrors || nameValid) {
      return null;
    } else if (_name.isEmpty) {
      return 'Campo Obrigatório';
    } else if (_name.length < 3) {
      return 'Nome muito curto';
    } else {
      return ('Nome inválido');
    }
  }

  @readonly
  RecipeCategory? _recipeCategory;

  @action
  void setRecipeCategory(RecipeCategory value) => _recipeCategory = value;

  @computed
  bool get recipeCategoryValid => _recipeCategory != null;

  String? get recipeCategoryError {
    if (!showErrors || recipeCategoryValid) {
      return null;
    } else if (!recipeCategoryValid) {
      return 'Campo Obrigatório';
    } else {
      return ('Categoria inválida');
    }
  }

  @readonly
  ObservableList<IngredientUsed>? _selectedIngredients = ObservableList<IngredientUsed>();

  @action
  void addIngredients(List<IngredientUsed> newIngredients) {
    _selectedIngredients!.clear();
    _selectedIngredients!.addAll(newIngredients);
  }

  @computed
  bool get ingredientsValid => _selectedIngredients!.isNotEmpty;

  @computed
  String? get ingredientsError {
    if (!showErrors || ingredientsValid) {
      return null;
    } else {
      return 'Campo obrigatório';
    }
  }

  @readonly
  bool _savedOrUpdatedOrDeleted = false;

  @action
  void setSavedOrUpdatedOrDeleted(bool value) => _savedOrUpdatedOrDeleted = value;

  @readonly
  bool _loading = false;

  @action
  void setLoading(bool value) => _loading = value;

  @observable
  String? error;

  @action
  void setError(String? value) => error = value;

  @observable
  bool showErrors = false;

  @action
  void invalidSendPressed() => showErrors = true;

  @computed
  bool get isFormValid => nameValid  && recipeCategoryValid && ingredientsValid && !_loading;

  @computed
  dynamic get createPressed => isFormValid ? _createRecipe : null;

  dynamic get editPressed => isFormValid ? _editRecipe : null;

  Future<void> _createRecipe() async {
    setError(null);
    setLoading(true);

    recipe = Recipe(
      name: _name,
      recipeCategory: _recipeCategory!,
    );

    try {
      await RecipeRepository().createRecipe(recipe!);

      if (recipe!.id != null) {
        for (final ingredientUsed in _selectedIngredients!) {
          final ingredientUsedStore = CreateIngredientUsedStore(ingredientUsed, recipe);

          await ingredientUsedStore.createPressed();
        }
      }

      setSavedOrUpdatedOrDeleted(true);
    } catch (e, s) {
      log('Store: Erro ao Criar Receita!', error: e.toString(), stackTrace: s);
      setError(e.toString());
    }

    setLoading(false);
  }

  @action
  Future<void> _editRecipe() async {
    setError(null);
    setLoading(true);

    recipe!.name = _name;
    recipe!.recipeCategory = _recipeCategory;

    final updatedIngredients = _selectedIngredients!;
    final existingIngredients = recipe!.ingredientsUsed ?? [];

    final newIngredients = updatedIngredients
        .where((ingredientUsed) => ingredientUsed.id == null)
        .toList();

    final removedIngredients = existingIngredients
        .where((existing) => !updatedIngredients.any((updated) => updated.id == existing.id))
        .toList();

    try {
      await RecipeRepository().editRecipe(recipe!);

      if (recipe!.id != null) {
        for (final ingredientUsed in newIngredients) {
          final ingredientUsedStore = CreateIngredientUsedStore(ingredientUsed, recipe);
          await ingredientUsedStore.createPressed();
        }

        for (final ingredientUsed in removedIngredients) {
          final ingredientUsedStore = CreateIngredientUsedStore(ingredientUsed, recipe);
          await ingredientUsedStore.deleteIngredientUsed();
        }
      }

      recipe!.ingredientsUsed = updatedIngredients;

      setSavedOrUpdatedOrDeleted(true);
    } catch (e, s) {
      log('Store: Erro ao Editar Receita!', error: e.toString(), stackTrace: s);
      setError(e.toString());
    }

    setLoading(false);
  }

  @action
  Future<void> deleteRecipe() async {
    setError(null);
    setLoading(true);

    try {
      await RecipeRepository().deleteRecipe(recipe!.id!.toString());
      setSavedOrUpdatedOrDeleted(true);
    } catch (e, s) {
      log('Store: Erro ao Deletar Receita!', error: e.toString(), stackTrace: s);
      setError(e.toString());
    }

    setLoading(false);
  }
}