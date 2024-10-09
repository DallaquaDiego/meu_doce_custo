import 'package:get_it/get_it.dart';

import '../stores/others/user_manager_store.dart';

class Brand {
  Brand({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  @override
  String toString() {
    return 'Brand { id: $id, name: $name}';
  }

  Map<String, dynamic> toMap() {
    final userManagerStore = GetIt.I<UserManagerStore>();
    if (userManagerStore.tokenData != null && userManagerStore.tokenData!.user != null) {
      final user_id = userManagerStore.tokenData!.user!.id!;
      return {
        'name': name,
        'user_id': user_id,
      };
    } else {
      throw Exception("Usuário não autenticado. Não é possível criar a marca.");
    }
  }

  factory Brand.fromMap(Map<String, dynamic> map) {
    return Brand(
      id: map['id'],
      name: (map['name'] ?? '') as String,
    );
  }
}
