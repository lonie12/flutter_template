import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.model.freezed.dart';
part 'api_response.model.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required bool error,
    required String message,
    required dynamic data,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
