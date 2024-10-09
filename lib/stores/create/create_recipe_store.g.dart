// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_recipe_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateRecipeStore on _CreateRecipeStore, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_CreateRecipeStore.nameValid'))
          .value;
  Computed<bool>? _$recipeCategoryValidComputed;

  @override
  bool get recipeCategoryValid => (_$recipeCategoryValidComputed ??=
          Computed<bool>(() => super.recipeCategoryValid,
              name: '_CreateRecipeStore.recipeCategoryValid'))
      .value;
  Computed<bool>? _$ingredientsValidComputed;

  @override
  bool get ingredientsValid => (_$ingredientsValidComputed ??= Computed<bool>(
          () => super.ingredientsValid,
          name: '_CreateRecipeStore.ingredientsValid'))
      .value;
  Computed<String?>? _$ingredientsErrorComputed;

  @override
  String? get ingredientsError => (_$ingredientsErrorComputed ??=
          Computed<String?>(() => super.ingredientsError,
              name: '_CreateRecipeStore.ingredientsError'))
      .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CreateRecipeStore.isFormValid'))
          .value;
  Computed<dynamic>? _$createPressedComputed;

  @override
  dynamic get createPressed =>
      (_$createPressedComputed ??= Computed<dynamic>(() => super.createPressed,
              name: '_CreateRecipeStore.createPressed'))
          .value;

  late final _$_nameAtom =
      Atom(name: '_CreateRecipeStore._name', context: context);

  String get name {
    _$_nameAtom.reportRead();
    return super._name;
  }

  @override
  String get _name => name;

  @override
  set _name(String value) {
    _$_nameAtom.reportWrite(value, super._name, () {
      super._name = value;
    });
  }

  late final _$_recipeCategoryAtom =
      Atom(name: '_CreateRecipeStore._recipeCategory', context: context);

  RecipeCategory? get recipeCategory {
    _$_recipeCategoryAtom.reportRead();
    return super._recipeCategory;
  }

  @override
  RecipeCategory? get _recipeCategory => recipeCategory;

  @override
  set _recipeCategory(RecipeCategory? value) {
    _$_recipeCategoryAtom.reportWrite(value, super._recipeCategory, () {
      super._recipeCategory = value;
    });
  }

  late final _$_selectedIngredientsAtom =
      Atom(name: '_CreateRecipeStore._selectedIngredients', context: context);

  ObservableList<IngredientUsed>? get selectedIngredients {
    _$_selectedIngredientsAtom.reportRead();
    return super._selectedIngredients;
  }

  @override
  ObservableList<IngredientUsed>? get _selectedIngredients =>
      selectedIngredients;

  @override
  set _selectedIngredients(ObservableList<IngredientUsed>? value) {
    _$_selectedIngredientsAtom.reportWrite(value, super._selectedIngredients,
        () {
      super._selectedIngredients = value;
    });
  }

  late final _$_savedOrUpdatedOrDeletedAtom = Atom(
      name: '_CreateRecipeStore._savedOrUpdatedOrDeleted', context: context);

  bool get savedOrUpdatedOrDeleted {
    _$_savedOrUpdatedOrDeletedAtom.reportRead();
    return super._savedOrUpdatedOrDeleted;
  }

  @override
  bool get _savedOrUpdatedOrDeleted => savedOrUpdatedOrDeleted;

  @override
  set _savedOrUpdatedOrDeleted(bool value) {
    _$_savedOrUpdatedOrDeletedAtom
        .reportWrite(value, super._savedOrUpdatedOrDeleted, () {
      super._savedOrUpdatedOrDeleted = value;
    });
  }

  late final _$_loadingAtom =
      Atom(name: '_CreateRecipeStore._loading', context: context);

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
      Atom(name: '_CreateRecipeStore.error', context: context);

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
      Atom(name: '_CreateRecipeStore.showErrors', context: context);

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

  late final _$_editRecipeAsyncAction =
      AsyncAction('_CreateRecipeStore._editRecipe', context: context);

  @override
  Future<void> _editRecipe() {
    return _$_editRecipeAsyncAction.run(() => super._editRecipe());
  }

  late final _$deleteRecipeAsyncAction =
      AsyncAction('_CreateRecipeStore.deleteRecipe', context: context);

  @override
  Future<void> deleteRecipe() {
    return _$deleteRecipeAsyncAction.run(() => super.deleteRecipe());
  }

  late final _$_CreateRecipeStoreActionController =
      ActionController(name: '_CreateRecipeStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_CreateRecipeStoreActionController.startAction(
        name: '_CreateRecipeStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_CreateRecipeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRecipeCategory(RecipeCategory value) {
    final _$actionInfo = _$_CreateRecipeStoreActionController.startAction(
        name: '_CreateRecipeStore.setRecipeCategory');
    try {
      return super.setRecipeCategory(value);
    } finally {
      _$_CreateRecipeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addIngredients(List<IngredientUsed> newIngredients) {
    final _$actionInfo = _$_CreateRecipeStoreActionController.startAction(
        name: '_CreateRecipeStore.addIngredients');
    try {
      return super.addIngredients(newIngredients);
    } finally {
      _$_CreateRecipeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSavedOrUpdatedOrDeleted(bool value) {
    final _$actionInfo = _$_CreateRecipeStoreActionController.startAction(
        name: '_CreateRecipeStore.setSavedOrUpdatedOrDeleted');
    try {
      return super.setSavedOrUpdatedOrDeleted(value);
    } finally {
      _$_CreateRecipeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_CreateRecipeStoreActionController.startAction(
        name: '_CreateRecipeStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_CreateRecipeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String? value) {
    final _$actionInfo = _$_CreateRecipeStoreActionController.startAction(
        name: '_CreateRecipeStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CreateRecipeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_CreateRecipeStoreActionController.startAction(
        name: '_CreateRecipeStore.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_CreateRecipeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
showErrors: ${showErrors},
nameValid: ${nameValid},
recipeCategoryValid: ${recipeCategoryValid},
ingredientsValid: ${ingredientsValid},
ingredientsError: ${ingredientsError},
isFormValid: ${isFormValid},
createPressed: ${createPressed}
    ''';
  }
}
