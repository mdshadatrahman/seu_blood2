import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:seu_blood_2/utils/api_endpoints.dart';
class Auth{

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
        debugPrint("Log in successfull");
      } else {
        debugPrint("Error");
      }

    } catch (e){
      debugPrint(e.toString());
    }
  }
}