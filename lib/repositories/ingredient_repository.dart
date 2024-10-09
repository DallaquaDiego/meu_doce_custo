// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../core/global/endpoints.dart';
import '../models/ingredient.dart';
import '../stores/others/filter_search_store.dart';
import 'token_repository.dart';

class IngredientRepository {
  Future<void> createIngredient(Ingredient ingredient) async {
    var url = Uri.parse(baseURL + ingredientURL);
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(ingredient.toMap()),
      );

      // log('Response status: ${response.statusCode}');
      // log('Response body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 204) {
        return;
      } else {
        log('Erro ao criar ingrediente. Status: ${response.statusCode}');
        return Future.error(jsonDecode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao salvar Ingrediente!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao salvar Ingrediente!');
    }
  }

  //EDITAR
  Future <void> editIngredient (Ingredient ingredient) async {
    var url = Uri.parse(baseURL + ingredientURL + ingredient.id!.toString());
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.put (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },

        body: jsonEncode(ingredient.toMap()),
      );

      /*print('Put Brand');
      print(response.statusCode);
      print(response.body);*/

      if ( response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao editar Ingrediente!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao editar Ingrediente!');
    }
  }

  //EXCLUIR
  Future<void> deleteIngredient ( String id ) async {
    var url = Uri.parse ( baseURL + ingredientURL + id );
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.delete (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      /*print('Delete Ingredient');
      print(response.statusCode);
      print(response.body);*/

      if ( response.statusCode != 200 && response.statusCode != 204 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao deletar Ingrediente!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao deletar Ingrediente!');
    }
  }

  //LISTAGEM
  Future <List<Ingredient>?> findAllIngredients ({int? page, FilterSearchStore? filterSearchStore}) async {
    final token = await TokenRepository().tokenString();

    String auxUrl = '$baseURL$ingredientURL?page=$page&limit=15';

    if ( filterSearchStore!.search != '' ) {
      auxUrl = '$auxUrl&search=${filterSearchStore.search}';
    }
    final url = Uri.parse(auxUrl);

    try {
      final response = await http.get (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if ( response.statusCode == 200 ) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        final List<Ingredient> ingredient = jsonData.map((h) => Ingredient.fromMap(h)).toList();
        return ingredient;
      } else {
        return Future.error(json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao buscar Ingredientes!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao buscar Ingredientes!');
    }
  }
}
