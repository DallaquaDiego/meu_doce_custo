// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../core/global/endpoints.dart';
import '../models/recipe_category.dart';
import '../stores/others/filter_search_store.dart';
import 'token_repository.dart';

class RecipeCategoryRepository {
  Future<void> createRecipeCategory(RecipeCategory recipeCategory) async {

    var url = Uri.parse (baseURL + recipeCategoryURL) ;
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.post (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(recipeCategory.toMap()),
      );

      /*print('Post RecipeCategory');
      print(response.statusCode);
      print(response.body);*/

      if (response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201) {
        return Future.error(json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao salvar Categoria!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao salvar Categoria!');
    }
  }

  //EDITAR
  Future <void> editRecipeCategory (RecipeCategory recipeCategory) async {
    var url = Uri.parse (baseURL + recipeCategoryURL + recipeCategory.id!.toString());
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.put (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },

        body: jsonEncode (recipeCategory.toMap()),
      );

      /*print('Put RecipeCategory');
      print(response.statusCode);
      print(response.body);*/

      if ( response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao editar Categoria!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao editar Categoria!');
    }
  }

  //EXCLUIR
  Future<void> deleteRecipeCategory (String id) async {
    var url = Uri.parse (baseURL + recipeCategoryURL + id);
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

      /*print('Delete RecipeCategory');
      print(response.statusCode);
      print(response.body);*/

      if ( response.statusCode != 200 && response.statusCode != 204 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao deletar Categoria!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao deletar Categoria!');
    }
  }

  //LISTAGEM
  Future <List<RecipeCategory>?> findAllRecipeCategories ({int? page, FilterSearchStore? filterSearchStore}) async {
    final token = await TokenRepository().tokenString();

    String auxUrl = '$baseURL$recipeCategoryURL?page=$page&limit=15';

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
        final List<RecipeCategory> recipeCategory = jsonData.map((h) => RecipeCategory.fromMap(h)).toList();
        return recipeCategory;
      } else {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao buscar Categorias!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao buscar Categorias!');
    }
  }
}
