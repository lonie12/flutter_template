import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.model.g.dart';
part 'auth.model.freezed.dart';

@freezed
class PhoneExists with _$PhoneExists {
  const factory PhoneExists({required bool exists}) = _PhoneExists;

  factory PhoneExists.fromJson(Map<String, dynamic> json) =>
      _$PhoneExistsFromJson(json);
}
