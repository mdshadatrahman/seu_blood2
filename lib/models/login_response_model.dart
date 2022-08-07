// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final int id;
  final String email;
  final String phone_number;
  final String full_name;
  final String blood_group;
  final String dob;
  final String department;
  final String address;
  final String last_donation;
  final String access_token;
  final String token_type;

  LoginResponseModel({
    required this.id,
    required this.email,
    required this.phone_number,
    required this.full_name,
    required this.blood_group,
    required this.dob,
    required this.department,
    required this.address,
    required this.last_donation,
    required this.access_token,
    required this.token_type,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
