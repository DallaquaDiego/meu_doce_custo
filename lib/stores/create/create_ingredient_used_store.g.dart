// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ingredient_used_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateIngredientUsedStore on _CreateIngredientUsedStore, Store {
  Computed<bool>? _$quantityValidComputed;

  @override
  bool get quantityValid =>
      (_$quantityValidComputed ??= Computed<bool>(() => super.quantityValid,
              name: '_CreateIngredientUsedStore.quantityValid'))
          .value;
  Computed<bool>? _$ingredientValidComputed;

  @override
  bool get ingredientValid =>
      (_$ingredientValidComputed ??= Computed<bool>(() => super.ingredientValid,
              name: '_CreateIngredientUsedStore.ingredientValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CreateIngredientUsedStore.isFormValid'))
          .value;
  Computed<dynamic>? _$createPressedComputed;

  @override
  dynamic get createPressed =>
      (_$createPressedComputed ??= Computed<dynamic>(() => super.createPressed,
              name: '_CreateIngredientUsedStore.createPressed'))
          .value;

  late final _$_quantityAtom =
      Atom(name: '_CreateIngredientUsedStore._quantity', context: context);

  String get quantity {
    _$_quantityAtom.reportRead();
    return super._quantity;
  }

  @override
  String get _quantity => quantity;

  @override
  set _quantity(String value) {
    _$_quantityAtom.reportWrite(value, super._quantity, () {
      super._quantity = value;
    });
  }

  late final _$_ingredientAtom =
      Atom(name: '_CreateIngredientUsedStore._ingredient', context: context);

  Ingredient? get ingredient {
    _$_ingredientAtom.reportRead();
    return super._ingredient;
  }

  @override
  Ingredient? get _ingredient => ingredient;

  @override
  set _ingredient(Ingredient? value) {
    _$_ingredientAtom.reportWrite(value, super._ingredient, () {
      super._ingredient = value;
    });
  }

  late final _$_loadingAtom =
      Atom(name: '_CreateIngredientUsedStore._loading', context: context);

  bool get loading {
    _$_loadingAtom.reportRead();
    return super._loading;
  }

  @override
  bool get _loading => loading;

  @override
  set _loading(bool value) {
    _$_loadingAtom.reportWrite(value, super._loading, () {
      super._loading = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_CreateIngredientUsedStore.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$showErrorsAtom =
      Atom(name: '_CreateIngredientUsedStore.showErrors', context: context);

  @override
  bool get showErrors {
    _$showErrorsAtom.reportRead();
    return super.showErrors;
  }

  @override
  set showErrors(bool value) {
    _$showErrorsAtom.reportWrite(value, super.showErrors, () {
      super.showErrors = value;
    });
  }

  late final _$_createIngredientUsedAsyncAction = AsyncAction(
      '_CreateIngredientUsedStore._createIngredientUsed',
      context: context);

  @override
  Future<IngredientUsed?> _createIngredientUsed() {
    return _$_createIngredientUsedAsyncAction
        .run(() => super._createIngredientUsed());
  }

  late final _$deleteIngredientUsedAsyncAction = AsyncAction(
      '_CreateIngredientUsedStore.deleteIngredientUsed',
      context: context);

  @override
  Future<void> deleteIngredientUsed() {
    return _$deleteIngredientUsedAsyncAction
        .run(() => super.deleteIngredientUsed());
  }

  late final _$_CreateIngredientUsedStoreActionController =
      ActionController(name: '_CreateIngredientUsedStore', context: context);

  @override
  void setQuantity(String value) {
    final _$actionInfo = _$_CreateIngredientUsedStoreActionController
        .startAction(name: '_CreateIngredientUsedStore.setQuantity');
    try {
      return super.setQuantity(value);
    } finally {
      _$_CreateIngredientUsedStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIngredient(Ingredient value) {
    final _$actionInfo = _$_CreateIngredientUsedStoreActionController
        .startAction(name: '_CreateIngredientUsedStore.setIngredient');
    try {
      return super.setIngredient(value);
    } finally {
      _$_CreateIngredientUsedStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_CreateIngredientUsedStoreActionController
        .startAction(name: '_CreateIngredientUsedStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_CreateIngredientUsedStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String? value) {
    final _$actionInfo = _$_CreateIngredientUsedStoreActionController
        .startAction(name: '_CreateIngredientUsedStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CreateIngredientUsedStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_CreateIngredientUsedStoreActionController
        .startAction(name: '_CreateIngredientUsedStore.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_CreateIngredientUsedStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
showErrors: ${showErrors},
quantityValid: ${quantityValid},
ingredientValid: ${ingredientValid},
isFormValid: ${isFormValid},
createPressed: ${createPressed}
    ''';
  }
}
