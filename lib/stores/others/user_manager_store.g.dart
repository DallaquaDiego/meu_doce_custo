// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_manager_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserManagerStore on _UserManagerStore, Store {
  Computed<bool>? _$isLogedInComputed;

  @override
  bool get isLogedIn =>
      (_$isLogedInComputed ??= Computed<bool>(() => super.isLogedIn,
              name: '_UserManagerStore.isLogedIn'))
          .value;

  late final _$_tokenDataAtom =
      Atom(name: '_UserManagerStore._tokenData', context: context);

  AccessToken? get tokenData {
    _$_tokenDataAtom.reportRead();
    return super._tokenData;
  }

  @override
  AccessToken? get _tokenData => tokenData;

  @override
  set _tokenData(AccessToken? value) {
    _$_tokenDataAtom.reportWrite(value, super._tokenData, () {
      super._tokenData = value;
    });
  }

  late final _$_userAtom =
      Atom(name: '_UserManagerStore._user', context: context);

  bool? get user {
    _$_userAtom.reportRead();
    return super._user;
  }

  @override
  bool? get _user => user;

  @override
  set _user(bool? value) {
    _$_userAtom.reportWrite(value, super._user, () {
      super._user = value;
    });
  }

  late final _$_loadingAtom =
      Atom(name: '_UserManagerStore._loading', context: context);

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

  late final _$loadTokenAsyncAction =
      AsyncAction('_UserManagerStore.loadToken', context: context);

  @override
  Future<void> loadToken() {
    return _$loadTokenAsyncAction.run(() => super.loadToken());
  }

  late final _$loginAsyncAction =
      AsyncAction('_UserManagerStore.login', context: context);

  @override
  Future<AccessToken?> login(String email, String password) {
    return _$loginAsyncAction.run(() => super.login(email, password));
  }

  late final _$_UserManagerStoreActionController =
      ActionController(name: '_UserManagerStore', context: context);

  @override
  void setTokenData(AccessToken? value) {
    final _$actionInfo = _$_UserManagerStoreActionController.startAction(
        name: '_UserManagerStore.setTokenData');
    try {
      return super.setTokenData(value);
    } finally {
      _$_UserManagerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(bool? value) {
    final _$actionInfo = _$_UserManagerStoreActionController.startAction(
        name: '_UserManagerStore.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_UserManagerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading(bool value) {
    final _$actionInfo = _$_UserManagerStoreActionController.startAction(
        name: '_UserManagerStore.setLoading');
    try {
      return super.setLoading(value);
    } finally {
      _$_UserManagerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogedIn: ${isLogedIn}
    ''';
  }
}
