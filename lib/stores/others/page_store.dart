import 'package:mobx/mobx.dart';

/*Comando que precisa executar no terminal:
flutter packages pub run build_runner watch
flutter pub run build_runner watch --delete-conflicting-outputs
*/

part 'page_store.g.dart';

class PageStore = _PageStore with _$PageStore;

abstract class _PageStore with Store {
  @readonly
  int _page = 0;

  @action
  void setPage(int value) => _page = value;
}
