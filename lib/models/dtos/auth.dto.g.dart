// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckPhoneDto _$CheckPhoneDtoFromJson(Map<String, dynamic> json) =>
    CheckPhoneDto(
      phonenumber: json['phonenumber'] as String,
    );

Map<String, dynamic> _$CheckPhoneDtoToJson(CheckPhoneDto instance) =>
    <String, dynamic>{
      'phonenumber': instance.phonenumber,
    };

LoginDto _$LoginDtoFromJson(Map<String, dynamic> json) => LoginDto(
      phonenumber: json['phonenumber'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginDtoToJson(LoginDto instance) => <String, dynamic>{
      'phonenumber': instance.phonenumber,
      'password': instance.password,
    };
