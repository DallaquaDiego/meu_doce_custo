// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../core/global/endpoints.dart';
import '../models/recipe.dart';
import '../stores/others/filter_search_store.dart';
import 'token_repository.dart';

class RecipeRepository {
  Future<void> createRecipe(Recipe recipe) async {

    var url = Uri.parse (baseURL + recipeURL) ;
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.post (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(recipe.toMap()),
      );

      /*print('Post Recipe');
      print(response.statusCode);
      print(response.body);*/

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseBody = jsonDecode(response.body);

        recipe.id = responseBody['id'];
      } else {
        throw Exception('Erro ao criar receita: ${response.body}');
      }
    } catch (e, s) {
      log('Repository: Erro ao criar Receita!', error: e.toString(), stackTrace: s);
      throw Exception('Erro ao criar Receita');
    }
  }

  //EDITAR
  Future <void> editRecipe (Recipe recipe) async {
    var url = Uri.parse(baseURL + recipeURL + recipe.id!.toString());
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.put (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },

        body: jsonEncode(recipe.toMap()),
      );

      // print('Put Recipe');
      // print(response.statusCode);
      // print(response.body);

      if ( response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao editar Receita!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao editar Receita!');
    }
  }

  //EXCLUIR
  Future<void> deleteRecipe ( String id ) async {
    var url = Uri.parse ( baseURL + recipeURL + id );
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

      // print('Delete Recipe');
      // print(response.statusCode);
      // print(response.body);

      if ( response.statusCode != 200 && response.statusCode != 204 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao deletar Receita!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao deletar Receita!');
    }
  }

  //LISTAGEM
  Future <List<Recipe>?> findAllRecipes ({int? page, FilterSearchStore? filterSearchStore}) async {
    final token = await TokenRepository().tokenString();

    String auxUrl = '$baseURL$recipeURL?page=$page&limit=15';

    if (filterSearchStore!.search != '') {
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
        final List<Recipe> recipe = jsonData.map((h) => Recipe.fromMap(h)).toList();
        return recipe;
      } else {
        return Future.error(json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao buscar Receitas!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao buscar Receitas!');
    }
  }
}
