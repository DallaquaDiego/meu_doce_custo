// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../core/global/endpoints.dart';
import '../models/ingredient_used.dart';
import '../stores/others/filter_search_store.dart';
import 'token_repository.dart';

class IngredientUsedRepository {
  Future<void> createIngredientUsed (IngredientUsed ingredientUsed) async {

    var url = Uri.parse (baseURL + ingredientUsedURL) ;
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.post (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(ingredientUsed.toMap()),
      );

      // print('Post IngredientUsed');
      // print(ingredientUsed);
      // print(response.statusCode);
      // print(response.body);

      if (response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201) {
        return Future.error(json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao salvar Ingrediente Utilizado!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao salvar Ingrediente Utilizado!');
    }
  }

  //EDITAR
  Future <void> editIngredientUsed (IngredientUsed ingredientUsed) async {
    var url = Uri.parse(baseURL + ingredientUsedURL + ingredientUsed.id!.toString());
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.put (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },

        body: jsonEncode(ingredientUsed.toMap()),
      );

      /*print('Put IngredientUsed');
      print(response.statusCode);
      print(response.body);*/

      if ( response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao editar Ingrediente Utilizado!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao editar Ingrediente Utilizado!');
    }
  }

  //EXCLUIR
  Future<void> deleteIngredientUsed ( String id ) async {
    var url = Uri.parse ( baseURL + ingredientUsedURL + id );
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

      print('Delete IngredientUsed');
      print(response.statusCode);
      print(response.body);

      if ( response.statusCode != 200 && response.statusCode != 204 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao deletar Ingrediente Utilizado!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao deletar Ingrediente Utilizado!');
    }
  }

  //LISTAGEM
  Future <List<IngredientUsed>?> findAllIngredientUsed ({int? page, FilterSearchStore? filterSearchStore}) async {
    final token = await TokenRepository().tokenString();

    String auxUrl = '$baseURL$ingredientUsedURL?page=$page&limit=15';

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
        final List<IngredientUsed> ingredientUsed = jsonData.map((h) => IngredientUsed.fromMap(h)).toList();
        return ingredientUsed;
      } else {
        return Future.error(json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao buscar Ingrediente Utilizados!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao buscar Ingrediente Utilizados!');
    }
  }
}
