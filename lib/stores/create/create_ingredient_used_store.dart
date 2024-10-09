import 'dart:developer';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:mobx/mobx.dart';

import '../../models/ingredient.dart';
import '../../models/ingredient_used.dart';
import '../../models/recipe.dart';
import '../../repositories/ingredient_used_repository.dart';

/*Comando queprecisa executar no terminal:
flutter packages pub run build_runner watch
flutter pub run build_runner watch --delete-conflicting-outputs
dart run build_runner watch -d
*/

part 'create_ingredient_used_store.g.dart';

class CreateIngredientUsedStore = _CreateIngredientUsedStore with _$CreateIngredientUsedStore;

abstract class _CreateIngredientUsedStore with Store {
  _CreateIngredientUsedStore(this.ingredientUsed, this.recipe) {
    _quantity = ingredientUsed?.quantity.toString() ?? '0';
    _ingredient = ingredientUsed?.ingredient;
  }

  late IngredientUsed? ingredientUsed;
  late Recipe? recipe;

  @readonly
  String _quantity = '';

  @action
  void setQuantity(String value) {
    if (value.isEmpty) {
      _quantity = '0';
    } else {
      _quantity = value;
    }
  }

  @computed
  bool get quantityValid => int.tryParse(_quantity) != null && int.tryParse(_quantity)! > 0;

  String? get quantityError {
    if (!showErrors || quantityValid) {
      return null;
    } else {
      return ('Valor Inválido');
    }
  }

  @readonly
  Ingredient? _ingredient;

  @action
  void setIngredient(Ingredient value) => _ingredient = value;

  @computed
  bool get ingredientValid => _ingredient != null;

  String? get ingredientError {
    if (!showErrors || ingredientValid) {
      return null;
    } else if (!ingredientValid) {
      return 'Campo Obrigatório';
    } else {
      return ('Ingrediente inválido');
    }
  }

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
  bool get isFormValid => quantityValid  && ingredientValid && !_loading;

  @computed
  dynamic get createPressed => isFormValid ? _createIngredientUsed : null;

  @action
  Future<void> _createIngredientUsed() async {
    setError(null);
    setLoading(true);

    ingredientUsed = IngredientUsed(
      ingredient: _ingredient,
      recipe: recipe,
      quantity: int.parse(_quantity),
    );

    try {
      await IngredientUsedRepository().createIngredientUsed(ingredientUsed!);
    } catch (e, s) {
      log('Store: Erro ao Criar Ingrediente Usado!', error: e.toString(), stackTrace: s);
      setError(e.toString());
    }

    setLoading(false);
  }

  @action
  Future<void> deleteIngredientUsed() async {
    setError(null);
    setLoading(true);

    try {
      await IngredientUsedRepository().deleteIngredientUsed(ingredientUsed!.id!.toString());
    } catch (e, s) {
      log('Store: Erro ao Deletar Ingrediente Usado!', error: e.toString(), stackTrace: s);
      setError(e.toString());
    }

    setLoading(false);
  }
}