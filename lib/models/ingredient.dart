// ignore_for_file: non_constant_identifier_names

import 'package:get_it/get_it.dart';

import '../stores/others/user_manager_store.dart';
import 'brand.dart';

class Ingredient {
  Ingredient({
    this.id,
    this.name,
    this.price,
    this.size,
    this.is_ml,
    this.brand,
    this.user_id,
  });

  int? id;
  String? name;
  double? price;
  int? size;
  int? is_ml;
  int? user_id;
  Brand? brand;

  @override
  String toString() {
    return 'Ingredient{id: $id, name: $name, user_id: $user_id, price: $price, size: $size, is_ml: $is_ml, brand: $brand}';
  }

  Map<String, dynamic> toMap() {
    final userManagerStore = GetIt.I<UserManagerStore>();
    if (userManagerStore.tokenData != null && userManagerStore.tokenData!.user != null) {
      user_id = userManagerStore.tokenData!.user!.id!;

      return {
        'name': name,
        'price': price,
        'size': size,
        'is_ml': is_ml,
        'brand_id': brand!.id!,
        'user_id': user_id,
      };
    } else {
      throw Exception("Usuário não autenticado. Não é possível criar o ingrediente.");
    }
  }

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      id: map['id'],
      user_id: map['user'] != null ? map['user']['id'] as int : 0,
      name: (map['name'] ?? '') as String,
      price: map['price'] is double ? (map['price'] ?? 0.0) as double : (map['price'] ?? 0).toDouble(),
      size: (map['size'] ?? 0) as int,
      is_ml: (map['is_ml'] ?? false) as int,
      brand: Brand.fromMap(map['brand'] ?? {}),
    );
  }
}
