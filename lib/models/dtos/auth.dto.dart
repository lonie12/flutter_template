import 'package:json_annotation/json_annotation.dart';

part 'auth.dto.g.dart';

@JsonSerializable()
class CheckPhoneDto {
  CheckPhoneDto({required this.phonenumber});

  final String phonenumber;

  Map<String, dynamic> toJson() => {'phonenumber': phonenumber};
}

@JsonSerializable()
class LoginDto {
  LoginDto({
    required this.phonenumber,
    required this.password,
  });

  final String phonenumber;
  final String password;

  Map<String, dynamic> toJson() => {
        'phonenumber': phonenumber,
        'password': password,
      };
}
