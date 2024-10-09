// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PageStore on _PageStore, Store {
  late final _$_pageAtom = Atom(name: '_PageStore._page', context: context);

  int get page {
    _$_pageAtom.reportRead();
    return super._page;
  }

  @override
  int get _page => page;

  @override
  set _page(int value) {
    _$_pageAtom.reportWrite(value, super._page, () {
      super._page = value;
    });
  }

  late final _$_PageStoreActionController =
      ActionController(name: '_PageStore', context: context);

  @override
  void setPage(int value) {
    final _$actionInfo =
        _$_PageStoreActionController.startAction(name: '_PageStore.setPage');
    try {
      return super.setPage(value);
    } finally {
      _$_PageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
