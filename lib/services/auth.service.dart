import 'package:dio/dio.dart';
import 'package:mainuse/helpers/constants.dart';
import 'package:mainuse/models/api_response.model.dart';
import 'package:mainuse/models/dtos/auth.dto.dart';
import 'package:retrofit/retrofit.dart';

part 'auth.service.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST("/auth/checkphone")
  Future<ApiResponse> checkPhoneNumber(@Body() CheckPhoneDto checkPhoneDto);

  @POST("/auth/signin")
  Future<ApiResponse> login(@Body() LoginDto loginDto);
}
