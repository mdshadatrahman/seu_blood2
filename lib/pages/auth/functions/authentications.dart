import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:seu_blood_2/models/login_response_model.dart';
import 'package:seu_blood_2/utils/api_endpoints.dart';
class Auth{

  Future<Object> login2(
      {required String username, required String password, required VoidCallback onSuccess}) async {
    try{
      Response response = await post(
        Uri.parse(APIEndpoints.LOGIN_URL),
        body: {
          'username': username,
          'password': password,
        }
      );

      if(response.statusCode == 200){
        debugPrint("logged in");
        onSuccess();
        return LoginResponseModel.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to login');
      }
    } catch (e){
      debugPrint(e.toString());
    }
    return 'Failed to login1';
  }

  static void login(String username, String password) async {
    try{
      Response response = await post(
        Uri.parse(APIEndpoints.LOGIN_URL),
        body: {
          'username': username,
          'password': password,
        }
      );
      if(response.statusCode == 200){
        debugPrint("Log in successful");
        var data = jsonDecode(response.body).toString();
        debugPrint(data);
      } else {
        debugPrint("Error");
      }

    } catch (e){
      debugPrint(e.toString());
    }
  }
}