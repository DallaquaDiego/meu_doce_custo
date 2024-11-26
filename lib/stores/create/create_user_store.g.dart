// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateUserStore on _CreateUserStore, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid =>
      (_$nameValidComputed ??= Computed<bool>(() => super.nameValid,
              name: '_CreateUserStore.nameValid'))
          .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_CreateUserStore.emailValid'))
          .value;
  Computed<bool>? _$passwordValidComputed;

  @override
  bool get passwordValid =>
      (_$passwordValidComputed ??= Computed<bool>(() => super.passwordValid,
              name: '_CreateUserStore.passwordValid'))
          .value;
  Computed<bool>? _$passwordConfirmationValidComputed;

  @override
  bool get passwordConfirmationValid => (_$passwordConfirmationValidComputed ??=
          Computed<bool>(() => super.passwordConfirmationValid,
              name: '_CreateUserStore.passwordConfirmationValid'))
      .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CreateUserStore.isFormValid'))
          .value;
  Computed<dynamic>? _$createPressedComputed;

  @override
  dynamic get createPressed =>
      (_$createPressedComputed ??= Computed<dynamic>(() => super.createPressed,
              name: '_CreateUserStore.createPressed'))
          .value;

  late final _$_nameAtom =
      Atom(name: '_CreateUserStore._name', context: context);

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

  late final _$_emailAtom =
      Atom(name: '_CreateUserStore._email', context: context);

  String get email {
    _$_emailAtom.reportRead();
    return super._email;
  }

  @override
  String get _email => email;

  @override
  set _email(String value) {
    _$_emailAtom.reportWrite(value, super._email, () {
      super._email = value;
    });
  }

  late final _$_visiblePasswordAtom =
      Atom(name: '_CreateUserStore._visiblePassword', context: context);

  bool get visiblePassword {
    _$_visiblePasswordAtom.reportRead();
    return super._visiblePassword;
  }

  @override
  bool get _visiblePassword => visiblePassword;

  @override
  set _visiblePassword(bool value) {
    _$_visiblePasswordAtom.reportWrite(value, super._visiblePassword, () {
      super._visiblePassword = value;
    });
  }

  late final _$_passwordAtom =
      Atom(name: '_CreateUserStore._password', context: context);

  String get password {
    _$_passwordAtom.reportRead();
    return super._password;
  }

  @override
  String get _password => password;

  @override
  set _password(String value) {
    _$_passwordAtom.reportWrite(value, super._password, () {
      super._password = value;
    });
  }

  late final _$_visiblePasswordConfirmationAtom = Atom(
      name: '_CreateUserStore._visiblePasswordConfirmation', context: context);

  bool get visiblePasswordConfirmation {
    _$_visiblePasswordConfirmationAtom.reportRead();
    return super._visiblePasswordConfirmation;
  }

  @override
  bool get _visiblePasswordConfirmation => visiblePasswordConfirmation;

  @override
  set _visiblePasswordConfirmation(bool value) {
    _$_visiblePasswordConfirmationAtom
        .reportWrite(value, super._visiblePasswordConfirmation, () {
      super._visiblePasswordConfirmation = value;
    });
  }

  late final _$_password_confirmationAtom =
      Atom(name: '_CreateUserStore._password_confirmation', context: context);

  String get password_confirmation {
    _$_password_confirmationAtom.reportRead();
    return super._password_confirmation;
  }

  @override
  String get _password_confirmation => password_confirmation;

  @override
  set _password_confirmation(String value) {
    _$_password_confirmationAtom
        .reportWrite(value, super._password_confirmation, () {
      super._password_confirmation = value;
    });
  }

  late final _$_savedOrUpdatedOrDeletedAtom =
      Atom(name: '_CreateUserStore._savedOrUpdatedOrDeleted', context: context);

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
      Atom(name: '_CreateUserStore._loading', context: context);

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
      Atom(name: '_CreateUserStore.error', context: context);

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
      Atom(name: '_CreateUserStore.showErrors', context: context);

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

  late final _$_CreateUserStoreActionController =
      ActionController(name: '_CreateUserStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObscurePassword() {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setObscurePassword');
    try {
      return super.setObscurePassword();
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setObscurePasswordConfirmation() {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setObscurePasswordConfirmation');
    try {
      return super.setObscurePasswordConfirmation();
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordConfirmation(String value) {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setPasswordConfirmation');
    try {
      return super.setPasswordConfirmation(value);
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSavedOrUpdatedOrDeleted(bool value) {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setSavedOrUpdatedOrDeleted');
    try {
      return super.setSavedOrUpdatedOrDeleted(value);
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String? value) {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_CreateUserStoreActionController.startAction(
        name: '_CreateUserStore.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_CreateUserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
showErrors: ${showErrors},
nameValid: ${nameValid},
emailValid: ${emailValid},
passwordValid: ${passwordValid},
passwordConfirmationValid: ${passwordConfirmationValid},
isFormValid: ${isFormValid},
createPressed: ${createPressed}
    ''';
  }
}
