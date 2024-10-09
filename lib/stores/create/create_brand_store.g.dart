// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brand_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateBrandStore on _CreateBrandStore, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_CreateBrandStore.nameValid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CreateBrandStore.isFormValid'))
          .value;
  Computed<dynamic>? _$createPressedComputed;

  @override
  dynamic get createPressed =>
      (_$createPressedComputed ??= Computed<dynamic>(() => super.createPressed,
              name: '_CreateBrandStore.createPressed'))
          .value;

  late final _$_nameAtom =
      Atom(name: '_CreateBrandStore._name', context: context);

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

  late final _$_savedOrUpdatedOrDeletedAtom = Atom(
      name: '_CreateBrandStore._savedOrUpdatedOrDeleted', context: context);

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
      Atom(name: '_CreateBrandStore._loading', context: context);

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
      Atom(name: '_CreateBrandStore.error', context: context);

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
      Atom(name: '_CreateBrandStore.showErrors', context: context);

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

  late final _$_editBrandAsyncAction =
      AsyncAction('_CreateBrandStore._editBrand', context: context);

  @override
  Future<void> _editBrand() {
    return _$_editBrandAsyncAction.run(() => super._editBrand());
  }

  late final _$deleteBrandAsyncAction =
      AsyncAction('_CreateBrandStore.deleteBrand', context: context);

  @override
  Future<void> deleteBrand() {
    return _$deleteBrandAsyncAction.run(() => super.deleteBrand());
  }

  late final _$_CreateBrandStoreActionController =
      ActionController(name: '_CreateBrandStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_CreateBrandStoreActionController.startAction(
        name: '_CreateBrandStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_CreateBrandStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSavedOrUpdatedOrDeleted(bool value) {
    final _$actionInfo = _$_CreateBrandStoreActionController.startAction(
        name: '_CreateBrandStore.setSavedOrUpdatedOrDeleted');
    try {
      return super.setSavedOrUpdatedOrDeleted(value);
    } finally {
      _$_CreateBrandStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_CreateBrandStoreActionController.startAction(
        name: '_CreateBrandStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_CreateBrandStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String? value) {
    final _$actionInfo = _$_CreateBrandStoreActionController.startAction(
        name: '_CreateBrandStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CreateBrandStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_CreateBrandStoreActionController.startAction(
        name: '_CreateBrandStore.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_CreateBrandStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
showErrors: ${showErrors},
nameValid: ${nameValid},
isFormValid: ${isFormValid},
createPressed: ${createPressed}
    ''';
  }
}
