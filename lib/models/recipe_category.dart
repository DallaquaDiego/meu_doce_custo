import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

import '../stores/others/user_manager_store.dart';

class RecipeCategory {
  RecipeCategory({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  @override
  String toString() {
    return 'Categoria{id: $id, name: $name}';
  }

  Map<String, dynamic> toMap() {
    final userManagerStore = GetIt.I<UserManagerStore>();
    final user_id = userManagerStore.tokenData!.user!.id!;

    return {
      'name': name,
      'user_id': user_id,
    };
  }

  factory RecipeCategory.fromMap(Map<String, dynamic> map) {
    return RecipeCategory(
      id: map['id'],
      name: (map['name'] ?? '') as String,
    );
  }
}
