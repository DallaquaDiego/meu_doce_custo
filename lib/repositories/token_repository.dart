// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../core/global/endpoints.dart';
import '../models/access_token.dart';

class TokenRepository {
  Future<AccessToken?> loginAPI(String email, String password) async {
    final now = DateTime.now();
    SharedPreferences shared = await SharedPreferences.getInstance();
    var url = Uri.parse(baseURL + loginURL);
    var response = await http.post(
      url,
      headers: {
        "Content-Type": "application/json",
      },
      body: json.encode({
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      await shared.setString('token', "${jsonDecode(response.body)['AccessToken']}");
      await shared.setString('token_timestamp', now.toIso8601String());
      final tokenData = AccessToken.fromMap(json.decode(response.body));
      return tokenData;
    } else {
      return null;
    }
  }

  Future<bool> verifyToken() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    if (shared.getString('token') != null) {
      final tokenTimestamp = shared.getString('token_timestamp')!;
      final timestamp = DateTime.parse(tokenTimestamp);
      final currentTime = DateTime.now();
      final tokenDuration = currentTime.difference(timestamp);

      const Duration tokenExpirationDuration = Duration(hours: 1);

      if (tokenDuration <= tokenExpirationDuration) {
        return true;
      } else {
        await exit();
        return false;
      }
    } else {
      return false;
    }
  }

  Future<String> tokenString() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return shared.getString('token') ?? '';
  }

  Future<bool> exit() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.clear();
    return true;
  }
}

