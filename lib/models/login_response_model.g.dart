// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      id: json['id'] as int,
      email: json['email'] as String,
      phone_number: json['phone_number'] as String,
      full_name: json['full_name'] as String,
      blood_group: json['blood_group'] as String,
      dob: json['dob'] as String,
      department: json['department'] as String,
      address: json['address'] as String,
      last_donation: json['last_donation'] as String,
      access_token: json['access_token'] as String,
      token_type: json['token_type'] as String,
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phone_number': instance.phone_number,
      'full_name': instance.full_name,
      'blood_group': instance.blood_group,
      'dob': instance.dob,
      'department': instance.department,
      'address': instance.address,
      'last_donation': instance.last_donation,
      'access_token': instance.access_token,
      'token_type': instance.token_type,
    };
