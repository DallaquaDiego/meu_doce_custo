// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../core/global/endpoints.dart';
import '../models/brand.dart';
import '../stores/others/filter_search_store.dart';
import 'token_repository.dart';

class BrandRepository {
  Future<void> createBrand(Brand brand) async {

    var url = Uri.parse (baseURL + brandURL) ;
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.post (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(brand.toMap()),
      );

      /*print('Post Brand');
      print(response.statusCode);
      print(response.body);*/

      if (response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201) {
        return Future.error(json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao salvar Marca!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao salvar Marca!');
    }
  }

  //EDITAR
  Future <void> editBrand (Brand brand) async {
    var url = Uri.parse (baseURL + brandURL + brand.id!.toString());
    final token = await TokenRepository().tokenString();

    try {
      final response = await http.put (
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },

        body: jsonEncode (brand.toMap()),
      );

      /*print('Put Brand');
      print(response.statusCode);
      print(response.body);*/

      if ( response.statusCode != 200 && response.statusCode != 204 && response.statusCode != 201 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao editar Marca!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao editar Marca!');
    }
  }

  //EXCLUIR
  Future<void> deleteBrand (String id) async {
    var url = Uri.parse (baseURL + brandURL + id);
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

      /*print('Delete Brand');
      print(response.statusCode);
      print(response.body);*/

      if ( response.statusCode != 200 && response.statusCode != 204 ) {
        return Future.error (json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao deletar Marca!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao deletar Marca!');
    }
  }

  Future<List<Brand>?> findAllBrands({int? page, FilterSearchStore? filterSearchStore}) async {
    final token = await TokenRepository().tokenString();

    String auxUrl = '$baseURL$brandURL?page=$page&limit=15';

    if (filterSearchStore!.search != '') {
      auxUrl = '$auxUrl&search=${filterSearchStore.search}';
    }
    final url = Uri.parse(auxUrl);

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        final List<Brand> brand = jsonData.map((h) => Brand.fromMap(h)).toList();
        return brand;
      } else {
        return Future.error(json.decode(response.body));
      }
    } catch (e, s) {
      log('Repository: Erro ao buscar Marcas!', error: e.toString(), stackTrace: s);
      return Future.error('Erro ao buscar Marcas!');
    }
  }
}
