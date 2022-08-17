import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:seu_blood_2/models/login_response_model.dart';
import 'package:seu_blood_2/utils/api_endpoints.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  FirebaseAuth auth = FirebaseAuth.instance;
  static registerWithEmailAndPassword(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  static loginWithEmailAndPassword(String emailAddress, String password)async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
      debugPrint(credential.user?.refreshToken.toString());
      credential.user?.getIdTokenResult().then((value) => {
        debugPrint('id token result'),
        debugPrint(value.toString()),
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }


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