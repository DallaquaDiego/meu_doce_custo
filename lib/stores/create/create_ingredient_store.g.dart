// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ingredient_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateIngredientStore on _CreateIngredientStore, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_CreateIngredientStore.nameValid'))
          .value;
  Computed<bool>? _$priceValidComputed;

  @override
  bool get priceValid =>
      (_$priceValidComputed ??= Computed<bool>(() => super.priceValid,
              name: '_CreateIngredientStore.priceValid'))
          .value;
  Computed<bool>? _$sizeValidComputed;

  @override
  bool get sizeValid =>
      (_$sizeValidComputed ??= Computed<bool>(() => super.sizeValid,
              name: '_CreateIngredientStore.sizeValid'))
          .value;
  Computed<bool>? _$isMlValidComputed;

  @override
  bool get isMlValid =>
      (_$isMlValidComputed ??= Computed<bool>(() => super.isMlValid,
              name: '_CreateIngredientStore.isMlValid'))
          .value;
  Computed<bool>? _$brandValidComputed;

  @override
  bool get brandValid =>
      (_$brandValidComputed ??= Computed<bool>(() => super.brandValid,
              name: '_CreateIngredientStore.brandValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CreateIngredientStore.isFormValid'))
          .value;
  Computed<dynamic>? _$createPressedComputed;

  @override
  dynamic get createPressed =>
      (_$createPressedComputed ??= Computed<dynamic>(() => super.createPressed,
              name: '_CreateIngredientStore.createPressed'))
          .value;

  late final _$_nameAtom =
      Atom(name: '_CreateIngredientStore._name', context: context);

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

  late final _$_priceAtom =
      Atom(name: '_CreateIngredientStore._price', context: context);

  String get price {
    _$_priceAtom.reportRead();
    return super._price;
  }

  @override
  String get _price => price;

  @override
  set _price(String value) {
    _$_priceAtom.reportWrite(value, super._price, () {
      super._price = value;
    });
  }

  late final _$_sizeAtom =
      Atom(name: '_CreateIngredientStore._size', context: context);

  String get size {
    _$_sizeAtom.reportRead();
    return super._size;
  }

  @override
  String get _size => size;

  @override
  set _size(String value) {
    _$_sizeAtom.reportWrite(value, super._size, () {
      super._size = value;
    });
  }

  late final _$_is_mlAtom =
      Atom(name: '_CreateIngredientStore._is_ml', context: context);

  int get is_ml {
    _$_is_mlAtom.reportRead();
    return super._is_ml;
  }

  @override
  int get _is_ml => is_ml;

  @override
  set _is_ml(int value) {
    _$_is_mlAtom.reportWrite(value, super._is_ml, () {
      super._is_ml = value;
    });
  }

  late final _$_brandAtom =
      Atom(name: '_CreateIngredientStore._brand', context: context);

  Brand? get brand {
    _$_brandAtom.reportRead();
    return super._brand;
  }

  @override
  Brand? get _brand => brand;

  @override
  set _brand(Brand? value) {
    _$_brandAtom.reportWrite(value, super._brand, () {
      super._brand = value;
    });
  }

  late final _$_savedOrUpdatedOrDeletedAtom = Atom(
      name: '_CreateIngredientStore._savedOrUpdatedOrDeleted',
      context: context);

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
      Atom(name: '_CreateIngredientStore._loading', context: context);

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
      Atom(name: '_CreateIngredientStore.error', context: context);

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
      Atom(name: '_CreateIngredientStore.showErrors', context: context);

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

  late final _$_editIngredientAsyncAction =
      AsyncAction('_CreateIngredientStore._editIngredient', context: context);

  @override
  Future<void> _editIngredient() {
    return _$_editIngredientAsyncAction.run(() => super._editIngredient());
  }

  late final _$deleteIngredientAsyncAction =
      AsyncAction('_CreateIngredientStore.deleteIngredient', context: context);

  @override
  Future<void> deleteIngredient() {
    return _$deleteIngredientAsyncAction.run(() => super.deleteIngredient());
  }

  late final _$_CreateIngredientStoreActionController =
      ActionController(name: '_CreateIngredientStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrice(String value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.setPrice');
    try {
      return super.setPrice(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSize(String value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.setSize');
    try {
      return super.setSize(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleIsMl(int value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.toggleIsMl');
    try {
      return super.toggleIsMl(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBrand(Brand value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.setBrand');
    try {
      return super.setBrand(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSavedOrUpdatedOrDeleted(bool value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.setSavedOrUpdatedOrDeleted');
    try {
      return super.setSavedOrUpdatedOrDeleted(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String? value) {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_CreateIngredientStoreActionController.startAction(
        name: '_CreateIngredientStore.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_CreateIngredientStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
showErrors: ${showErrors},
nameValid: ${nameValid},
priceValid: ${priceValid},
sizeValid: ${sizeValid},
isMlValid: ${isMlValid},
brandValid: ${brandValid},
isFormValid: ${isFormValid},
createPressed: ${createPressed}
    ''';
  }
}
